// Generated by gencpp from file rf_msgs/Wifi.msg
// DO NOT EDIT!


#ifndef RF_MSGS_MESSAGE_WIFI_H
#define RF_MSGS_MESSAGE_WIFI_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rf_msgs
{
template <class ContainerAllocator>
struct Wifi_
{
  typedef Wifi_<ContainerAllocator> Type;

  Wifi_()
    : header()
    , ap_id(0)
    , txmac()
    , chan(0)
    , n_sub(0)
    , n_rows(0)
    , n_cols(0)
    , bw(0)
    , mcs(0)
    , rssi(0)
    , fc(0)
    , seq_num(0)
    , csi_real()
    , csi_imag()
    , rx_id()
    , msg_id(0)  {
    }
  Wifi_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ap_id(0)
    , txmac(_alloc)
    , chan(0)
    , n_sub(0)
    , n_rows(0)
    , n_cols(0)
    , bw(0)
    , mcs(0)
    , rssi(0)
    , fc(0)
    , seq_num(0)
    , csi_real(_alloc)
    , csi_imag(_alloc)
    , rx_id(_alloc)
    , msg_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _ap_id_type;
  _ap_id_type ap_id;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _txmac_type;
  _txmac_type txmac;

   typedef uint8_t _chan_type;
  _chan_type chan;

   typedef uint32_t _n_sub_type;
  _n_sub_type n_sub;

   typedef uint8_t _n_rows_type;
  _n_rows_type n_rows;

   typedef uint8_t _n_cols_type;
  _n_cols_type n_cols;

   typedef uint8_t _bw_type;
  _bw_type bw;

   typedef uint8_t _mcs_type;
  _mcs_type mcs;

   typedef int32_t _rssi_type;
  _rssi_type rssi;

   typedef uint32_t _fc_type;
  _fc_type fc;

   typedef uint32_t _seq_num_type;
  _seq_num_type seq_num;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _csi_real_type;
  _csi_real_type csi_real;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _csi_imag_type;
  _csi_imag_type csi_imag;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _rx_id_type;
  _rx_id_type rx_id;

   typedef uint32_t _msg_id_type;
  _msg_id_type msg_id;





  typedef boost::shared_ptr< ::rf_msgs::Wifi_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rf_msgs::Wifi_<ContainerAllocator> const> ConstPtr;

}; // struct Wifi_

typedef ::rf_msgs::Wifi_<std::allocator<void> > Wifi;

typedef boost::shared_ptr< ::rf_msgs::Wifi > WifiPtr;
typedef boost::shared_ptr< ::rf_msgs::Wifi const> WifiConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rf_msgs::Wifi_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rf_msgs::Wifi_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rf_msgs::Wifi_<ContainerAllocator1> & lhs, const ::rf_msgs::Wifi_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.ap_id == rhs.ap_id &&
    lhs.txmac == rhs.txmac &&
    lhs.chan == rhs.chan &&
    lhs.n_sub == rhs.n_sub &&
    lhs.n_rows == rhs.n_rows &&
    lhs.n_cols == rhs.n_cols &&
    lhs.bw == rhs.bw &&
    lhs.mcs == rhs.mcs &&
    lhs.rssi == rhs.rssi &&
    lhs.fc == rhs.fc &&
    lhs.seq_num == rhs.seq_num &&
    lhs.csi_real == rhs.csi_real &&
    lhs.csi_imag == rhs.csi_imag &&
    lhs.rx_id == rhs.rx_id &&
    lhs.msg_id == rhs.msg_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rf_msgs::Wifi_<ContainerAllocator1> & lhs, const ::rf_msgs::Wifi_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rf_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rf_msgs::Wifi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rf_msgs::Wifi_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rf_msgs::Wifi_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rf_msgs::Wifi_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rf_msgs::Wifi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rf_msgs::Wifi_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rf_msgs::Wifi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6b3816e58324f4c826cc5e2cd4f2f3b";
  }

  static const char* value(const ::rf_msgs::Wifi_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6b3816e58324f4cULL;
  static const uint64_t static_value2 = 0x826cc5e2cd4f2f3bULL;
};

template<class ContainerAllocator>
struct DataType< ::rf_msgs::Wifi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rf_msgs/Wifi";
  }

  static const char* value(const ::rf_msgs::Wifi_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rf_msgs::Wifi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message accepts data from a WiFi access point for us in \n"
"# robotics applications. The core data point is CSI, the channel\n"
"# state information. \n"
"\n"
"# CSI matrix is n_sub x n_rows x n_cols\n"
"\n"
"Header header\n"
"\n"
"uint8 ap_id # access point collecting the CSI\n"
"uint8[] txmac\n"
"\n"
"uint8 chan # channel number\n"
"\n"
"uint32 n_sub # number of subcarriers\n"
"uint8 n_rows # number of rows for the CSI matrix, generally the number of RX antenna\n"
"uint8 n_cols # number of columns, generally the number of TX antenna\n"
"\n"
"# bandwidth of the signal, can be 20, 40 or 80 MHz, \n"
"# the number of subcarriers are affected by this numbers\n"
"uint8 bw \n"
"\n"
"# the number of spatial channels. \n"
"# Fewer than n_cols means the columns index greater than number of \n"
"# spatial channels will be zero\n"
"uint8 mcs \n"
"\n"
"int32 rssi # received signal strength across \"n_rows\" antennas\n"
"\n"
"uint32 fc # packet type byte\n"
"uint32 seq_num # packet number\n"
"\n"
"float64[] csi_real # channel state information - real part\n"
"float64[] csi_imag # channel state information - complex part\n"
"\n"
"string rx_id #flag of receiver\n"
"\n"
"uint32 msg_id #realtime msg for debug\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::rf_msgs::Wifi_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rf_msgs::Wifi_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ap_id);
      stream.next(m.txmac);
      stream.next(m.chan);
      stream.next(m.n_sub);
      stream.next(m.n_rows);
      stream.next(m.n_cols);
      stream.next(m.bw);
      stream.next(m.mcs);
      stream.next(m.rssi);
      stream.next(m.fc);
      stream.next(m.seq_num);
      stream.next(m.csi_real);
      stream.next(m.csi_imag);
      stream.next(m.rx_id);
      stream.next(m.msg_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Wifi_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rf_msgs::Wifi_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rf_msgs::Wifi_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ap_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ap_id);
    s << indent << "txmac[]" << std::endl;
    for (size_t i = 0; i < v.txmac.size(); ++i)
    {
      s << indent << "  txmac[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.txmac[i]);
    }
    s << indent << "chan: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.chan);
    s << indent << "n_sub: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.n_sub);
    s << indent << "n_rows: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.n_rows);
    s << indent << "n_cols: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.n_cols);
    s << indent << "bw: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bw);
    s << indent << "mcs: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mcs);
    s << indent << "rssi: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rssi);
    s << indent << "fc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fc);
    s << indent << "seq_num: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.seq_num);
    s << indent << "csi_real[]" << std::endl;
    for (size_t i = 0; i < v.csi_real.size(); ++i)
    {
      s << indent << "  csi_real[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.csi_real[i]);
    }
    s << indent << "csi_imag[]" << std::endl;
    for (size_t i = 0; i < v.csi_imag.size(); ++i)
    {
      s << indent << "  csi_imag[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.csi_imag[i]);
    }
    s << indent << "rx_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.rx_id);
    s << indent << "msg_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.msg_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RF_MSGS_MESSAGE_WIFI_H