cmake_minimum_required(VERSION 3.16)
project(CppTemplate)

set(CMAKE_CXX_STANDARD 20)

add_executable(CppTemplate
    source/main.cpp
)

target_include_directories(CppTemplate PRIVATE include)