cmake_minimum_required(VERSION 3.23)

project(template_cpp C CXX)

include(CMakePrintHelpers)


set(CMAKE_CXX_STANDARD 26)
set (ADDITIONAL_DEBUG_FLAGS " -ggdb -stdlib=libc++ -Wall -Wextra -Wpedantic -Werror")
cmake_print_variables(ADDITIONAL_DEBUG_FLAGS)
set (ADDITIONAL_DEBUG_FLAGS_FOR_CLANG "--extra-arg=-stdlib=libc++")
cmake_print_variables(ADDITIONAL_DEBUG_FLAGS_FOR_CLANG)
# set (CMAKE_CXX_COMPILER "/usr/local/bin/clang++")
set (CMAKE_CXX_COMPILER "clang++-18")
set (CMAKE_CXX_FLAGS_DEBUG ${ADDITIONAL_DEBUG_FLAGS})
set(CMAKE_CXX_CLANG_TIDY clang-tidy-18 ${ADDITIONAL_DEBUG_FLAGS_FOR_CLANG})


add_executable(${PROJECT_NAME} main.cpp )
