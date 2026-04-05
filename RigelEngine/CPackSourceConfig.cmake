# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_ARCHIVE_COMPONENT_INSTALL "ON")
set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BINARY_TZ "ON")
set(CPACK_BUILD_SOURCE_DIRS "/boot/home/Desktop/src/RigelEngine-0.9.1;/boot/home/Desktop/src/RigelEngine-0.9.1")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "bin")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_CREATE_DESKTOP_LINKS "RigelEngine")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.27), libstdc++6 (>= 8.4.0), libsdl2-2.0-0 (>= 2.0.4), libsdl2-mixer-2.0-0 (>= 2.0.1)")
set(CPACK_DEBIAN_PACKAGE_RECOMMENDS "")
set(CPACK_DEBIAN_PACKAGE_SECTION "games")
set(CPACK_DEBIAN_PACKAGE_SUGGESTS "")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/boot/system/data/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "RigelEngine built using CMake")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "/boot/home/Desktop/src/RigelEngine-0.9.1;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/boot/system")
set(CPACK_MODULE_PATH "/boot/home/Desktop/src/RigelEngine-0.9.1/cmake/Modules/")
set(CPACK_NSIS_DISPLAY_NAME "RigelEngine")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "RigelEngine")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "/boot/home/Desktop/src/RigelEngine-0.9.1/CPackConfig.cmake")
set(CPACK_OUTPUT_FILE_PREFIX "packages")
set(CPACK_PACKAGE_CHECKSUM "SHA256")
set(CPACK_PACKAGE_CONTACT "Nikolai Wuttke <lethal_guitar128@web.de>")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION "RigelEngine is a re-implementation of the game Duke Nukem II, originally
released by Apogee Software in 1993 for MS-DOS.  It works as a drop-in
replacement for the original executable: It reads the game's data files and
plays just like the original, but runs natively on modern operating systems.
On top of that, it offers various modern enhancements like higher frame rate,
better game controller support, a wide-screen mode, quick saving etc.

In order to run RigelEngine, the game data from the original game is required.
Both the shareware version and the registered version work.

You can grab the shareware version from archive.org:
https://archive.org/download/msdos_DUKE2_shareware/DUKE2.zip
")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/boot/system/data/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A modern re-implementation of the game Duke Nukem II")
set(CPACK_PACKAGE_EXECUTABLES "RigelEngine")
set(CPACK_PACKAGE_FILE_NAME "RigelEngine-0.9.1-Source")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/lethal-guitar/RigelEngine")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "RigelEngine")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "RigelEngine")
set(CPACK_PACKAGE_NAME "RigelEngine")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Nikolai Wuttke <lethal_guitar128@web.de>")
set(CPACK_PACKAGE_VERSION "0.9.1")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "9")
set(CPACK_PACKAGE_VERSION_PATCH "1")
set(CPACK_PROJECT_NAME "RigelEngine")
set(CPACK_RESOURCE_FILE_LICENSE "/boot/system/data/cmake/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/boot/home/Desktop/src/RigelEngine-0.9.1/README.md")
set(CPACK_RESOURCE_FILE_WELCOME "/boot/system/data/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/boot/home/Desktop/src/RigelEngine-0.9.1;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/boot/home/Desktop/src/RigelEngine-0.9.1/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "RigelEngine-0.9.1-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Haiku-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Haiku")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Haiku-Source")
set(CPACK_WARN_ON_ABSOLUTE_INSTALL_DESTINATION "TRUE")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/boot/home/Desktop/src/RigelEngine-0.9.1/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
