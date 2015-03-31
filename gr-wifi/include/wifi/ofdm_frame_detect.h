/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_WIFI_OFDM_FRAME_DETECT_H
#define INCLUDED_WIFI_OFDM_FRAME_DETECT_H

#include <wifi/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace wifi {

    /*!
     * \brief <+description of block+>
     * \ingroup wifi
     *
     */
    class WIFI_API ofdm_frame_detect : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<ofdm_frame_detect> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of wifi::ofdm_frame_detect.
       *
       * To avoid accidental use of raw pointers, wifi::ofdm_frame_detect's
       * constructor is in a private implementation
       * class. wifi::ofdm_frame_detect::make is the public interface for
       * creating new instances.
       */
      static sptr make();
    };

  } // namespace wifi
} // namespace gr

#endif /* INCLUDED_WIFI_OFDM_FRAME_DETECT_H */

