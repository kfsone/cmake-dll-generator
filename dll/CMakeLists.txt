CMAKE_MINIMUM_REQUIRED(VERSION 3.21)

PROJECT(DLL)
ADD_LIBRARY(DLL SHARED dll.cpp)
SET_TARGET_PROPERTIES(
	DLL PROPERTIES
	LIBRARY_OUTPUT_NAME "dllR"
	LIBRARY_OUTPUT_NAME_DEBUG "dllD"
	OUTPUT_NAME "dllR"
	OUTPUT_NAME_DEBUG "dllD"
)

# Put the product into a well-known-location.
INSTALL(
	TARGETS	  DLL
	ARCHIVE   DESTINATION "${CMAKE_CURRENT_LIST_DIR}/lib"
	LIBRARY   DESTINATION "${CMAKE_CURRENT_LIST_DIR}/lib"
	RUNTIME   DESTINATION "${CMAKE_CURRENT_LIST_DIR}/lib"
	FRAMEWORK DESTINATION "${CMAKE_CURRENT_LIST_DIR}/lib"
)
