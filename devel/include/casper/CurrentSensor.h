// Generated by gencpp from file casper/CurrentSensor.msg
// DO NOT EDIT!


#ifndef CASPER_MESSAGE_CURRENTSENSOR_H
#define CASPER_MESSAGE_CURRENTSENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace casper
{
template <class ContainerAllocator>
struct CurrentSensor_
{
  typedef CurrentSensor_<ContainerAllocator> Type;

  CurrentSensor_()
    : header()
    , Current(0.0)  {
    }
  CurrentSensor_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Current(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _Current_type;
  _Current_type Current;





  typedef boost::shared_ptr< ::casper::CurrentSensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::casper::CurrentSensor_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentSensor_

typedef ::casper::CurrentSensor_<std::allocator<void> > CurrentSensor;

typedef boost::shared_ptr< ::casper::CurrentSensor > CurrentSensorPtr;
typedef boost::shared_ptr< ::casper::CurrentSensor const> CurrentSensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::casper::CurrentSensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::casper::CurrentSensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::casper::CurrentSensor_<ContainerAllocator1> & lhs, const ::casper::CurrentSensor_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Current == rhs.Current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::casper::CurrentSensor_<ContainerAllocator1> & lhs, const ::casper::CurrentSensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace casper

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::casper::CurrentSensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::casper::CurrentSensor_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::casper::CurrentSensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::casper::CurrentSensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::casper::CurrentSensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::casper::CurrentSensor_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::casper::CurrentSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eaf9aabaced7ef13f9d43a8742fa93f3";
  }

  static const char* value(const ::casper::CurrentSensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeaf9aabaced7ef13ULL;
  static const uint64_t static_value2 = 0xf9d43a8742fa93f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::casper::CurrentSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "casper/CurrentSensor";
  }

  static const char* value(const ::casper::CurrentSensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::casper::CurrentSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 Current\n"
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

  static const char* value(const ::casper::CurrentSensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::casper::CurrentSensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentSensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::casper::CurrentSensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::casper::CurrentSensor_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Current: ";
    Printer<double>::stream(s, indent + "  ", v.Current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CASPER_MESSAGE_CURRENTSENSOR_H
