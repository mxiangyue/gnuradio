INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_GR_OFDM_SHORT_PREAMBLE gr_ofdm_short_preamble)

FIND_PATH(
    GR_OFDM_SHORT_PREAMBLE_INCLUDE_DIRS
    NAMES gr_ofdm_short_preamble/api.h
    HINTS $ENV{GR_OFDM_SHORT_PREAMBLE_DIR}/include
        ${PC_GR_OFDM_SHORT_PREAMBLE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_OFDM_SHORT_PREAMBLE_LIBRARIES
    NAMES gnuradio-gr_ofdm_short_preamble
    HINTS $ENV{GR_OFDM_SHORT_PREAMBLE_DIR}/lib
        ${PC_GR_OFDM_SHORT_PREAMBLE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_OFDM_SHORT_PREAMBLE DEFAULT_MSG GR_OFDM_SHORT_PREAMBLE_LIBRARIES GR_OFDM_SHORT_PREAMBLE_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_OFDM_SHORT_PREAMBLE_LIBRARIES GR_OFDM_SHORT_PREAMBLE_INCLUDE_DIRS)
