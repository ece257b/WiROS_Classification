// Generated by gencpp from file wiros_csi_node/ConfigureCSIRequest.msg
// DO NOT EDIT!


#ifndef WIROS_CSI_NODE_MESSAGE_CONFIGURECSIREQUEST_H
#define WIROS_CSI_NODE_MESSAGE_CONFIGURECSIREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wiros_csi_node
{
template <class ContainerAllocator>
struct ConfigureCSIRequest_
{
  typedef ConfigureCSIRequest_<ContainerAllocator> Type;

  ConfigureCSIRequest_()
    : chan(0)
    , bw(0)
    , mac_filter()  {
    }
  ConfigureCSIRequest_(const ContainerAllocator& _alloc)
    : chan(0)
    , bw(0)
    , mac_filter(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _chan_type;
  _chan_type chan;

   typedef int32_t _bw_type;
  _bw_type bw;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mac_filter_type;
  _mac_filter_type mac_filter;





  typedef boost::shared_ptr< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigureCSIRequest_

typedef ::wiros_csi_node::ConfigureCSIRequest_<std::allocator<void> > ConfigureCSIRequest;

typedef boost::shared_ptr< ::wiros_csi_node::ConfigureCSIRequest > ConfigureCSIRequestPtr;
typedef boost::shared_ptr< ::wiros_csi_node::ConfigureCSIRequest const> ConfigureCSIRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator1> & lhs, const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator2> & rhs)
{
  return lhs.chan == rhs.chan &&
    lhs.bw == rhs.bw &&
    lhs.mac_filter == rhs.mac_filter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator1> & lhs, const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wiros_csi_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d3538d33fe6ceb7e291eb0316ceb8e9d";
  }

  static const char* value(const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3538d33fe6ceb7eULL;
  static const uint64_t static_value2 = 0x291eb0316ceb8e9dULL;
};

template<class ContainerAllocator>
struct DataType< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wiros_csi_node/ConfigureCSIRequest";
  }

  static const char* value(const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#set these values to -1 to keep the current configuration\n"
"int32 chan\n"
"int32 bw\n"
"\n"
"#set to \"\" to keep current config\n"
"string mac_filter\n"
;
  }

  static const char* value(const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.chan);
      stream.next(m.bw);
      stream.next(m.mac_filter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigureCSIRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wiros_csi_node::ConfigureCSIRequest_<ContainerAllocator>& v)
  {
    s << indent << "chan: ";
    Printer<int32_t>::stream(s, indent + "  ", v.chan);
    s << indent << "bw: ";
    Printer<int32_t>::stream(s, indent + "  ", v.bw);
    s << indent << "mac_filter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mac_filter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WIROS_CSI_NODE_MESSAGE_CONFIGURECSIREQUEST_H
