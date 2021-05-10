/*
 * Blockers.cpp
 * RVO2 Library
 *
 * Copyright 2008 University of North Carolina at Chapel Hill
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Please send all bug reports to <geom@cs.unc.edu>.
 *
 * The authors may be contacted via:
 *
 * Jur van den Berg, Stephen J. Guy, Jamie Snape, Ming C. Lin, Dinesh Manocha
 * Dept. of Computer Science
 * 201 S. Columbia St.
 * Frederick P. Brooks, Jr. Computer Science Bldg.
 * Chapel Hill, N.C. 27599-3175
 * United States of America
 *
 * <https://gamma.cs.unc.edu/RVO2/>
 */

/*
 * Custom simulation showing two lines of agents moving in opposite directions, avoiding collisions
 * 
 * Now features obstacles in the simulation, testing collisiona avoidance on static objects in the world
 * 
 * Created by Calvin Schaul and Carson Radtke
 */

#ifndef RVO_OUTPUT_TIME_AND_POSITIONS
#define RVO_OUTPUT_TIME_AND_POSITIONS 1
#endif

#include <cmath>
#include <cstddef>
#include <vector>

#if RVO_OUTPUT_TIME_AND_POSITIONS
#include <iostream>
#endif

#if _OPENMP
#include <omp.h>
#endif

#include <RVO.h>

#ifndef M_PI
const float M_PI = 3.14159265358979323846f;
#endif

/* Store the goals of the agents. */
std::vector<RVO::Vector2> goals;

void setupScenario(RVO::RVOSimulator *sim)
{
	/* Specify the global time step of the simulation. */
	sim->setTimeStep(0.25f);

	/* Specify the default parameters for agents that are subsequently added. */
	sim->setAgentDefaults(15.0f, 10, 10.0f, 10.0f, 1.5f, 2.0f);

	/*
	 * Create two lines of agents
	 * Set their goals across the world
	 * 
	 * World coords: (-100.0f < x, y < 100.0f)
	 */

	for (size_t i = 0; i < 100; ++i) {
		if(i < 50) {
			sim->addAgent(RVO::Vector2(-75.0f, -75.0f + i * 3.0f));
			sim->setAgentPrefVelocity(i, RVO::Vector2(1.0f, 0.0f));
		}
		else {
			sim->addAgent(RVO::Vector2(75.0f, -75.0f + (i-50) * 3.0f));
			sim->setAgentPrefVelocity(i, RVO::Vector2(-1.0f, 0.0f));
		}
	}

    std::vector<RVO::Vector2> wallLeft, wallRight, wallTop, wallBot, zig;

    std::cout << "const obstacle_data = [";

/*
    wallLeft.push_back(RVO::Vector2(-40.0f, -65.0f));
    wallLeft.push_back(RVO::Vector2(-40.0f, 65.0f));
    sim->addObstacle(wallLeft);
    std::cout << "[{x:-40,y:-65},{x:-40,y:65}],";
*/

/*
    wallRight.push_back(RVO::Vector2(40.0f, -65.0f));
    wallRight.push_back(RVO::Vector2(40.0f, 65.0f));
    sim->addObstacle(wallRight);
    std::cout << "[{x:40,y:-65},{x:40,y:65}],";
*/

/*
    wallTop.push_back(RVO::Vector2(-50.0f, 80.0f));
    wallTop.push_back(RVO::Vector2(50.0f, 80.0f));
    sim->addObstacle(wallTop);
    std::cout << "[{x:-50,y:80},{x:50,y:80}],";
*/

/*
    wallBot.push_back(RVO::Vector2(-50.0f, -80.0f));
    wallBot.push_back(RVO::Vector2(50.0f, -80.0f));
    sim->addObstacle(wallBot);
    std::cout << "[{x:-50,y:-80},{x:50,y:-80}],";
*/


//    zig.push_back(RVO::Vector2(10.0f, 60.0f));
//    zig.push_back(RVO::Vector2(-10.0f, 40.0f));
    zig.push_back(RVO::Vector2(50.0f, 50.0f));
    zig.push_back(RVO::Vector2(-50.0f, -50.0f));
    zig.push_back(RVO::Vector2(50.0f, 50.0f));
//    zig.push_back(RVO::Vector2(-10.0f, -40.0f));
//    zig.push_back(RVO::Vector2(10.0f, -60.0f));
    sim->addObstacle(zig);
    std::cout << "[/*{x:10,y:60},{x:-10,y:40},*/{x:50,y:50},{x:-50,y:-50},{x:50,y:50}/*,{x:-10,y:-40},{x:10,y:-60}*/]";


    sim->processObstacles();

    std::cout << "];" << std::endl;
}

#if RVO_OUTPUT_TIME_AND_POSITIONS
void updateVisualization(RVO::RVOSimulator *sim)
{
	std:: cout << "[";

	/* Output the current position of all the agents. */
	for (size_t i = 0; i < sim->getNumAgents(); ++i) {
		std::cout << (i == 0 ? "" : ",") << sim->getAgentPosition(i);
	}

	std::cout << "]";

}
#endif

void setPreferredVelocities(RVO::RVOSimulator *sim)
{
	/*
	 * Set the preferred velocity to be a vector of unit magnitude (speed) in the
	 * direction of the goal.
	 */
#ifdef _OPENMP
#pragma omp parallel for
#endif
	for (int i = 0; i < static_cast<int>(sim->getNumAgents()); ++i) {
		RVO::Vector2 goalVector = goals[i] - sim->getAgentPosition(i);

		if (RVO::absSq(goalVector) > 1.0f) {
			goalVector = RVO::normalize(goalVector);
		}

		sim->setAgentPrefVelocity(i, goalVector);
	}
}

bool reachedGoal(RVO::RVOSimulator *sim)
{
	/* Check if all agents have reached their goals. */
	for (size_t i = 0; i < sim->getNumAgents(); ++i) {

		RVO::Vector2 pos = sim->getAgentPosition(i);

		if (pos.x() < 100 && pos.x() > -100)
			return false;

	}

	return true;
}

int main()
{
	/* Create a n3ew simulator instance. */
	RVO::RVOSimulator *sim = new RVO::RVOSimulator();

	/* Set up the scenario. */
	setupScenario(sim);

	std::cout << "const location_data = [";
	int first_comma = 0;

	/* Perform (and manipulate) the simulation. */
	do {
#if RVO_OUTPUT_TIME_AND_POSITIONS
		if (first_comma)
			std::cout << ",";
		first_comma = 1;
		updateVisualization(sim);
#endif
		sim->doStep();
	}
	while (!reachedGoal(sim));

	std::cout << "]" << std::endl;

	delete sim;

	return 0;
}
