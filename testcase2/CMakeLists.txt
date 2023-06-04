cmake_minimum_required (VERSION 3.13)

project(testcase2 C Fortran)

add_library(routine1 routine1.f90)

add_executable(main2  main2.c)
target_link_libraries(main2 routine1)
