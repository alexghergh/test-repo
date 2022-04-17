cmake_minimum_required(VERSION 3.18)

project(
  wiregrid
  VERSION 0.0.1
  LANGUAGES C)

message("Compiling with ${CMAKE_C_COMPILER}")

add_executable(wiregrid src/main.c)
