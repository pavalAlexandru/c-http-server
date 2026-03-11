cmake_minimum_required(VERSION 3.16)
project(http-server VERSION 1.0 LANGUAGES C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS "src/*.c")

add_compile_options(-Wall -Wextra -pedantic)

add_executable(server ${SOURCES})

target_include_directories(server PRIVATE ${CMAKE_SOURCE_DIR}/include)
