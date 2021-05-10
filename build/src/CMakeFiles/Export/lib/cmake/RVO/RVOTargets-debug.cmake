#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "RVO::RVO" for configuration "Debug"
set_property(TARGET RVO::RVO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(RVO::RVO PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libRVO.2.0.3.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libRVO.2.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS RVO::RVO )
list(APPEND _IMPORT_CHECK_FILES_FOR_RVO::RVO "${_IMPORT_PREFIX}/lib/libRVO.2.0.3.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
