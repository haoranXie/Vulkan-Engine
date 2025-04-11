cmake_minimum_required(VERSION 3.22)
project(VulkanEngine)

find_package(Vulkan REQUIRED)

add_executable(VulkanEngine src/main.cpp)
target_link_libraries(VulkanEngine PRIVATE Vulkan::Vulkan)