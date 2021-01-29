# Try to find the ZLIB library
#  ZLIB_FOUND - system has ZLIB
#  ZLIB_INCLUDE_DIR - the ZLIB include directory
#  ZLIB_LIBRARY - the ZLIB library

FIND_PATH(ZLIB_INCLUDE_DIR NAMES zlib.h)
SET(_ZLIB_STATIC_LIBS libz.a libzlib.a zlib1.a)
SET(_ZLIB_SHARED_LIBS libz.dll.a zdll zlib zlib1 z)
IF(USE_STATIC_LIBS)
    FIND_LIBRARY(ZLIB_LIBRARY NAMES ${_ZLIB_STATIC_LIBS} ${_ZLIB_SHARED_LIBS})
ELSE()
    FIND_LIBRARY(ZLIB_LIBRARY NAMES ${_ZLIB_SHARED_LIBS} ${_ZLIB_STATIC_LIBS})
ENDIF()
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ZLIB DEFAULT_MSG ZLIB_LIBRARY ZLIB_INCLUDE_DIR)
MARK_AS_ADVANCED(ZLIB_LIBRARY ZLIB_INCLUDE_DIR)
