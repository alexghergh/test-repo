cmake_minimum_required(VERSION 3.18)

project(
  wiregrid
  VERSION 0.0.1
  LANGUAGES C)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wmismatched-dealloc")

message("Compiling with ${CMAKE_C_COMPILER}")
message("Compiling with ${CC}")

add_executable(wiregrid src/main.c)
