// Generated by gencpp from file csi_tools/SaveChannelResponse.msg
// DO NOT EDIT!


#ifndef CSI_TOOLS_MESSAGE_SAVECHANNELRESPONSE_H
#define CSI_TOOLS_MESSAGE_SAVECHANNELRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace csi_tools
{
template <class ContainerAllocator>
struct SaveChannelResponse_
{
  typedef SaveChannelResponse_<ContainerAllocator> Type;

  SaveChannelResponse_()
    : result()  {
    }
  SaveChannelResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::csi_tools::SaveChannelResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::csi_tools::SaveChannelResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SaveChannelResponse_

typedef ::csi_tools::SaveChannelResponse_<std::allocator<void> > SaveChannelResponse;

typedef boost::shared_ptr< ::csi_tools::SaveChannelResponse > SaveChannelResponsePtr;
typedef boost::shared_ptr< ::csi_tools::SaveChannelResponse const> SaveChannelResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::csi_tools::SaveChannelResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::csi_tools::SaveChannelResponse_<ContainerAllocator1> & lhs, const ::csi_tools::SaveChannelResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::csi_tools::SaveChannelResponse_<ContainerAllocator1> & lhs, const ::csi_tools::SaveChannelResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace csi_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::csi_tools::SaveChannelResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::csi_tools::SaveChannelResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::csi_tools::SaveChannelResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::csi_tools::SaveChannelResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc22f2a1ed8654a0bULL;
  static const uint64_t static_value2 = 0x365f1bb3f7ff2c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "csi_tools/SaveChannelResponse";
  }

  static const char* value(const ::csi_tools::SaveChannelResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string result\n"
;
  }

  static const char* value(const ::csi_tools::SaveChannelResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveChannelResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::csi_tools::SaveChannelResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::csi_tools::SaveChannelResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CSI_TOOLS_MESSAGE_SAVECHANNELRESPONSE_H
