# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-src")
  file(MAKE_DIRECTORY "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-src")
endif()
file(MAKE_DIRECTORY
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-build"
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix"
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/tmp"
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/src/microsoft-gsl-populate-stamp"
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/src"
  "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/src/microsoft-gsl-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/src/microsoft-gsl-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/CodeProjects/Vulkan-Engine/out/build/x64-Debug/_deps/microsoft-gsl-subbuild/microsoft-gsl-populate-prefix/src/microsoft-gsl-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
