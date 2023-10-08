cmake_minimum_required(VERSION 3.27.6)
project(rowhome)

add_executable(${PROJECT_NAME} src/main.cpp)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libs/vulkan/1.3.250.1/include)
target_link_libraries(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/libs/vulkan/1.3.250.1/bin)
target_link_libraries(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/libs/vulkan/1.3.250.1/lib)

