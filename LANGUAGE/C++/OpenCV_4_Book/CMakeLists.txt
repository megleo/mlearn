cmake_minimum_required(VERSION 3.23)
project(OpenCV_4_Book)

set(CMAKE_CXX_STANDARD 17)
find_package(OpenCV 4.0.0 REQUIRED)
message("OpenCV version: ${OpenCV_VERSION}")

include_directories(${OpenCV_INCLUDE_DIRS})
link_libraries(${OpenCV_LUB_DIR})

add_executable(demo2-7 Chapter-2.7.cpp Chapter-2.8.cpp Chapter2-10.cpp Chapter3-1.cpp test.cpp)
target_link_libraries(demo2-7  ${OpenCV_LIBS})

add_executable(demo2-8 Chapter-2.8.cpp)
target_link_libraries(demo2-8  ${OpenCV_LIBS})

add_executable(demo2-10 Chapter2-10.cpp)
target_link_libraries(demo2-10 ${OpenCV_LIBS})

add_executable(demo3-1 Chapter3-1.cpp)
target_link_libraries(demo3-1 ${OpenCV_LIBS})

add_executable(demo3-2 Chapter3-2.cpp)
target_link_libraries(demo3-2 ${OpenCV_LIBS})

add_executable(test test.cpp)
target_link_libraries(test ${OpenCV_LIBS})