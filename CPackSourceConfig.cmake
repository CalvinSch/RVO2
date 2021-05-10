# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "")
set(CPACK_BINARY_BUNDLE "")
set(CPACK_BINARY_CYGWIN "")
set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_DRAGNDROP "")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_NUGET "")
set(CPACK_BINARY_OSXX11 "")
set(CPACK_BINARY_PACKAGEMAKER "")
set(CPACK_BINARY_PRODUCTBUILD "")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BINARY_TZ "ON")
set(CPACK_BINARY_WIX "")
set(CPACK_BINARY_ZIP "")
set(CPACK_BUILD_SOURCE_DIRS "/mnt/c/Users/carson/Documents/school/cs657/project;/mnt/c/Users/carson/Documents/school/cs657/project")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "development;runtime")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://gamma.cs.unc.edu/RVO2/")
set(CPACK_DEBIAN_PACKAGE_SECTION "contrib/devel")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "ON")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.16/Templates/CPack.GenericDescription.txt")
set(CPACK_FREEBSD_PACKAGE_LICENSE "APACHE20")
set(CPACK_FREEBSD_PACKAGE_WWW "https://gamma.cs.unc.edu/RVO2/")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "_build/;\\.git/;\\.gitattributes;\\.github/;\\.gitignore;bazel-;Brewfile")
set(CPACK_INSTALLED_DIRECTORIES "/mnt/c/Users/carson/Documents/school/cs657/project;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/mnt/c/Users/carson/Documents/school/cs657/project/cmake/modules")
set(CPACK_NSIS_DISPLAY_NAME "RVO 2.0.3")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "RVO 2.0.3")
set(CPACK_OUTPUT_CONFIG_FILE "/mnt/c/Users/carson/Documents/school/cs657/project/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "Jamie Snape")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.16/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Optimal Reciprocal Collision Avoidance")
set(CPACK_PACKAGE_FILE_NAME "RVO-2.0.3-Source")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "RVO 2.0.3")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "RVO 2.0.3")
set(CPACK_PACKAGE_NAME "RVO")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "University of North Carolina at Chapel Hill")
set(CPACK_PACKAGE_VERSION "2.0.3")
set(CPACK_PACKAGE_VERSION_MAJOR "2")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "3")
set(CPACK_RESOURCE_FILE_LICENSE "/mnt/c/Users/carson/Documents/school/cs657/project/LICENSE")
set(CPACK_RESOURCE_FILE_README "/usr/share/cmake-3.16/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-3.16/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_PACKAGE_AUTOREQPROV "ON")
set(CPACK_RPM_PACKAGE_LICENSE "ASL 2.0")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_RPM_PACKAGE_URL "https://gamma.cs.unc.edu/RVO2/")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "_build/;\\.git/;\\.gitattributes;\\.github/;\\.gitignore;bazel-;Brewfile")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/mnt/c/Users/carson/Documents/school/cs657/project;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/mnt/c/Users/carson/Documents/school/cs657/project/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "RVO-2.0.3-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_STRIP_FILES "ON")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Linux-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "ON")
set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_TOPLEVEL_TAG "Linux-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/mnt/c/Users/carson/Documents/school/cs657/project/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
