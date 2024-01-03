vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO singhmayank123/mylibrary
    REF 65f5b600c0af08b244ef5995b4b5702f90c15b8b
    SHA512 36a2bccc06704794dd51da62e88cc47d31dc300e351d639ac11e2e5583bd63e4f1663d3e3b9fe5016f3960bfa19294fcc6f4ef6cbb23269e5ca3e65b67dc6a37
    HEAD_REF main
)
vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
