vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pjkundert/ezpwd-reed-solomon
    REF dc899de0c79f317a751b2da60ef71d83c81bf885 # 3.0.0
    SHA512 ba363f38595d74a062b35430b802459a15c28f7259aa2f0a26db890fb8ce38d8319f92b6585bdcb3415a0e341571fd26b94cfd94c5b93cde0ba393eb22a608be
    HEAD_REF master
)

# Header-only library: configure, build the test-suite (vcpkg runs CTest
# automatically), and install the headers + CMake package config.
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DEZPWD_BUILD_TESTS=ON
)

vcpkg_cmake_build()
vcpkg_cmake_install()

vcpkg_install_copyright(
    FILE_LIST "${SOURCE_PATH}/LICENSE"
    COMMENT "Ezpwd Reed-Solomon is dual-licensed under GPLv3 (see COPYING) or a commercial license from Hard Consulting Corporation. The c++/ezpwd/rs module is additionally available under the LGPL."
)
