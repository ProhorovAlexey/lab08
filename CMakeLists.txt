cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(print_hello_world)

add_executable(hello_world ./demo/hello_world.cpp)

include_directories(./include)
add_subdirectory(./source print)

target_link_libraries(hello_world print)
install(TARGETS hello_world RUNTIME DESTINATION bin)
