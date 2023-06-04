cmake_minimum_required (VERSION 3.13)

project(testcase2 C Fortran)

add_executable(main2 routine1.f90 main2.c)
