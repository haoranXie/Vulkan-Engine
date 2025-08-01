# This is a basic version file for the Config-mode of find_package().
# It is used by write_basic_package_version_file() as input file for configure_file()
# to create a version-file which can be installed along a config.cmake file.
#
# The created file sets PACKAGE_VERSION_EXACT if the current version string and
# the requested version string are exactly the same and it sets
# PACKAGE_VERSION_COMPATIBLE if the current version is >= requested version,
# but only if the requested major version is the same as the current one.
# The variable CVF_VERSION must be set before calling configure_file().


set(PACKAGE_VERSION "4.0.0")

if(PACKAGE_VERSION VERSION_LESS PACKAGE_FIND_VERSION)
  set(PACKAGE_VERSION_COMPATIBLE FALSE)
else()

  if("4.0.0" MATCHES "^([0-9]+)\\.")
    set(CVF_VERSION_MAJOR "${CMAKE_MATCH_1}")
    if(NOT CVF_VERSION_MAJOR VERSION_EQUAL 0)
      string(REGEX REPLACE "^0+" "" CVF_VERSION_MAJOR "${CVF_VERSION_MAJOR}")
    endif()
  else()
    set(CVF_VERSION_MAJOR "4.0.0")
  endif()

  if(PACKAGE_FIND_VERSION_RANGE)
    # both endpoints of the range must have the expected major version
    math (EXPR CVF_VERSION_MAJOR_NEXT "${CVF_VERSION_MAJOR} + 1")
    if (NOT PACKAGE_FIND_VERSION_MIN_MAJOR STREQUAL CVF_VERSION_MAJOR
        OR ((PACKAGE_FIND_VERSION_RANGE_MAX STREQUAL "INCLUDE" AND NOT PACKAGE_FIND_VERSION_MAX_MAJOR STREQUAL CVF_VERSION_MAJOR)
          OR (PACKAGE_FIND_VERSION_RANGE_MAX STREQUAL "EXCLUDE" AND NOT PACKAGE_FIND_VERSION_MAX VERSION_LESS_EQUAL CVF_VERSION_MAJOR_NEXT)))
      set(PACKAGE_VERSION_COMPATIBLE FALSE)
    elseif(PACKAGE_FIND_VERSION_MIN_MAJOR STREQUAL CVF_VERSION_MAJOR
        AND ((PACKAGE_FIND_VERSION_RANGE_MAX STREQUAL "INCLUDE" AND PACKAGE_VERSION VERSION_LESS_EQUAL PACKAGE_FIND_VERSION_MAX)
        OR (PACKAGE_FIND_VERSION_RANGE_MAX STREQUAL "EXCLUDE" AND PACKAGE_VERSION VERSION_LESS PACKAGE_FIND_VERSION_MAX)))
      set(PACKAGE_VERSION_COMPATIBLE TRUE)
    else()
      set(PACKAGE_VERSION_COMPATIBLE FALSE)
    endif()
  else()
    if(PACKAGE_FIND_VERSION_MAJOR STREQUAL CVF_VERSION_MAJOR)
      set(PACKAGE_VERSION_COMPATIBLE TRUE)
    else()
      set(PACKAGE_VERSION_COMPATIBLE FALSE)
    endif()

    if(PACKAGE_FIND_VERSION STREQUAL PACKAGE_VERSION)
      set(PACKAGE_VERSION_EXACT TRUE)
    endif()
  endif()
endif()


