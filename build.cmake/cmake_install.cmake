# Install script for directory: /home/runner/work/workflow/workflow

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/workflow" TYPE FILE RENAME "workflow-config.cmake" FILES "/home/runner/work/workflow/workflow/build.cmake/config.toinstall.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/workflow" TYPE FILE FILES "/home/runner/work/workflow/workflow/build.cmake/workflow-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/workflow" TYPE FILE FILES
    "/home/runner/work/workflow/workflow/src/protocol/ProtocolMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/http_parser.h"
    "/home/runner/work/workflow/workflow/src/protocol/HttpMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/HttpUtil.h"
    "/home/runner/work/workflow/workflow/src/protocol/redis_parser.h"
    "/home/runner/work/workflow/workflow/src/protocol/RedisMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/mysql_stream.h"
    "/home/runner/work/workflow/workflow/src/protocol/MySQLMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/MySQLMessage.inl"
    "/home/runner/work/workflow/workflow/src/protocol/MySQLResult.h"
    "/home/runner/work/workflow/workflow/src/protocol/MySQLResult.inl"
    "/home/runner/work/workflow/workflow/src/protocol/MySQLUtil.h"
    "/home/runner/work/workflow/workflow/src/protocol/mysql_parser.h"
    "/home/runner/work/workflow/workflow/src/protocol/mysql_types.h"
    "/home/runner/work/workflow/workflow/src/protocol/mysql_byteorder.h"
    "/home/runner/work/workflow/workflow/src/protocol/PackageWrapper.h"
    "/home/runner/work/workflow/workflow/src/protocol/SSLWrapper.h"
    "/home/runner/work/workflow/workflow/src/protocol/dns_parser.h"
    "/home/runner/work/workflow/workflow/src/protocol/DnsMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/DnsUtil.h"
    "/home/runner/work/workflow/workflow/src/protocol/TLVMessage.h"
    "/home/runner/work/workflow/workflow/src/protocol/ConsulDataTypes.h"
    "/home/runner/work/workflow/workflow/src/server/WFServer.h"
    "/home/runner/work/workflow/workflow/src/server/WFDnsServer.h"
    "/home/runner/work/workflow/workflow/src/server/WFHttpServer.h"
    "/home/runner/work/workflow/workflow/src/server/WFRedisServer.h"
    "/home/runner/work/workflow/workflow/src/server/WFMySQLServer.h"
    "/home/runner/work/workflow/workflow/src/client/WFMySQLConnection.h"
    "/home/runner/work/workflow/workflow/src/client/WFConsulClient.h"
    "/home/runner/work/workflow/workflow/src/client/WFDnsClient.h"
    "/home/runner/work/workflow/workflow/src/manager/DnsCache.h"
    "/home/runner/work/workflow/workflow/src/manager/WFGlobal.h"
    "/home/runner/work/workflow/workflow/src/manager/UpstreamManager.h"
    "/home/runner/work/workflow/workflow/src/manager/RouteManager.h"
    "/home/runner/work/workflow/workflow/src/manager/EndpointParams.h"
    "/home/runner/work/workflow/workflow/src/manager/WFFuture.h"
    "/home/runner/work/workflow/workflow/src/manager/WFFacilities.h"
    "/home/runner/work/workflow/workflow/src/manager/WFFacilities.inl"
    "/home/runner/work/workflow/workflow/src/util/json_parser.h"
    "/home/runner/work/workflow/workflow/src/util/EncodeStream.h"
    "/home/runner/work/workflow/workflow/src/util/LRUCache.h"
    "/home/runner/work/workflow/workflow/src/util/StringUtil.h"
    "/home/runner/work/workflow/workflow/src/util/URIParser.h"
    "/home/runner/work/workflow/workflow/src/factory/WFConnection.h"
    "/home/runner/work/workflow/workflow/src/factory/WFTask.h"
    "/home/runner/work/workflow/workflow/src/factory/WFTask.inl"
    "/home/runner/work/workflow/workflow/src/factory/WFGraphTask.h"
    "/home/runner/work/workflow/workflow/src/factory/WFTaskError.h"
    "/home/runner/work/workflow/workflow/src/factory/WFTaskFactory.h"
    "/home/runner/work/workflow/workflow/src/factory/WFTaskFactory.inl"
    "/home/runner/work/workflow/workflow/src/factory/WFAlgoTaskFactory.h"
    "/home/runner/work/workflow/workflow/src/factory/WFAlgoTaskFactory.inl"
    "/home/runner/work/workflow/workflow/src/factory/Workflow.h"
    "/home/runner/work/workflow/workflow/src/factory/WFOperator.h"
    "/home/runner/work/workflow/workflow/src/factory/WFResourcePool.h"
    "/home/runner/work/workflow/workflow/src/factory/WFMessageQueue.h"
    "/home/runner/work/workflow/workflow/src/factory/WFHttpServerTask.h"
    "/home/runner/work/workflow/workflow/src/nameservice/WFNameService.h"
    "/home/runner/work/workflow/workflow/src/nameservice/WFDnsResolver.h"
    "/home/runner/work/workflow/workflow/src/nameservice/WFServiceGovernance.h"
    "/home/runner/work/workflow/workflow/src/nameservice/UpstreamPolicies.h"
    "/home/runner/work/workflow/workflow/src/kernel/CommRequest.h"
    "/home/runner/work/workflow/workflow/src/kernel/CommScheduler.h"
    "/home/runner/work/workflow/workflow/src/kernel/Communicator.h"
    "/home/runner/work/workflow/workflow/src/kernel/SleepRequest.h"
    "/home/runner/work/workflow/workflow/src/kernel/ExecRequest.h"
    "/home/runner/work/workflow/workflow/src/kernel/IORequest.h"
    "/home/runner/work/workflow/workflow/src/kernel/Executor.h"
    "/home/runner/work/workflow/workflow/src/kernel/list.h"
    "/home/runner/work/workflow/workflow/src/kernel/mpoller.h"
    "/home/runner/work/workflow/workflow/src/kernel/poller.h"
    "/home/runner/work/workflow/workflow/src/kernel/msgqueue.h"
    "/home/runner/work/workflow/workflow/src/kernel/rbtree.h"
    "/home/runner/work/workflow/workflow/src/kernel/SubTask.h"
    "/home/runner/work/workflow/workflow/src/kernel/thrdpool.h"
    "/home/runner/work/workflow/workflow/src/kernel/IOService_linux.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/workflow-0.11.4" TYPE FILE FILES "/home/runner/work/workflow/workflow/README.md")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/runner/work/workflow/workflow/build.cmake/src/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/runner/work/workflow/workflow/build.cmake/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/runner/work/workflow/workflow/build.cmake/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
