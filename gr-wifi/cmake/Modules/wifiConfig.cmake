INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_WIFI wifi)

FIND_PATH(
    WIFI_INCLUDE_DIRS
    NAMES wifi/api.h
    HINTS $ENV{WIFI_DIR}/include
        ${PC_WIFI_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    WIFI_LIBRARIES
    NAMES gnuradio-wifi
    HINTS $ENV{WIFI_DIR}/lib
        ${PC_WIFI_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(WIFI DEFAULT_MSG WIFI_LIBRARIES WIFI_INCLUDE_DIRS)
MARK_AS_ADVANCED(WIFI_LIBRARIES WIFI_INCLUDE_DIRS)

