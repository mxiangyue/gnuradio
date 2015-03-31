/* -*- c++ -*- */

#define WIFI_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "wifi_swig_doc.i"

%{
#include "wifi/ofdm_frame_detect.h"
%}

%include "wifi/ofdm_frame_detect.h"
GR_SWIG_BLOCK_MAGIC2(wifi, ofdm_frame_detect);
