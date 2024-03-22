// Generated by gencpp from file rf_msgs/AccessPoints.msg
// DO NOT EDIT!


#ifndef RF_MSGS_MESSAGE_ACCESSPOINTS_H
#define RF_MSGS_MESSAGE_ACCESSPOINTS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <rf_msgs/Station.h>

namespace rf_msgs
{
template <class ContainerAllocator>
struct AccessPoints_
{
  typedef AccessPoints_<ContainerAllocator> Type;

  AccessPoints_()
    : header()
    , aps()  {
    }
  AccessPoints_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , aps(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::rf_msgs::Station_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rf_msgs::Station_<ContainerAllocator> >> _aps_type;
  _aps_type aps;





  typedef boost::shared_ptr< ::rf_msgs::AccessPoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rf_msgs::AccessPoints_<ContainerAllocator> const> ConstPtr;

}; // struct AccessPoints_

typedef ::rf_msgs::AccessPoints_<std::allocator<void> > AccessPoints;

typedef boost::shared_ptr< ::rf_msgs::AccessPoints > AccessPointsPtr;
typedef boost::shared_ptr< ::rf_msgs::AccessPoints const> AccessPointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rf_msgs::AccessPoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rf_msgs::AccessPoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rf_msgs::AccessPoints_<ContainerAllocator1> & lhs, const ::rf_msgs::AccessPoints_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.aps == rhs.aps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rf_msgs::AccessPoints_<ContainerAllocator1> & lhs, const ::rf_msgs::AccessPoints_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rf_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rf_msgs::AccessPoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rf_msgs::AccessPoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rf_msgs::AccessPoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rf_msgs::AccessPoints_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rf_msgs::AccessPoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rf_msgs::AccessPoints_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rf_msgs::AccessPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abf4bd98be28b4420acdb573e4838a47";
  }

  static const char* value(const ::rf_msgs::AccessPoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xabf4bd98be28b442ULL;
  static const uint64_t static_value2 = 0x0acdb573e4838a47ULL;
};

template<class ContainerAllocator>
struct DataType< ::rf_msgs::AccessPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rf_msgs/AccessPoints";
  }

  static const char* value(const ::rf_msgs::AccessPoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rf_msgs::AccessPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#A list of stations.\n"
"\n"
"Header header\n"
"Station[] aps\n"
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
"\n"
"================================================================================\n"
"MSG: rf_msgs/Station\n"
"#basic object which can be detected by wireless sensing.\n"
"\n"
"Header header\n"
"\n"
"#mac address\n"
"uint8[6] mac\n"
"\n"
"#wifi channel on which it is broadcast\n"
"int32 channel\n"
"\n"
"#measured rssi\n"
"int32 rssi\n"
;
  }

  static const char* value(const ::rf_msgs::AccessPoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rf_msgs::AccessPoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.aps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AccessPoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rf_msgs::AccessPoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rf_msgs::AccessPoints_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "aps[]" << std::endl;
    for (size_t i = 0; i < v.aps.size(); ++i)
    {
      s << indent << "  aps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rf_msgs::Station_<ContainerAllocator> >::stream(s, indent + "    ", v.aps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RF_MSGS_MESSAGE_ACCESSPOINTS_H
