vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO singhmayank123/mylibrary
    REF e241a74947088a63ec005d070ac648f0f2a3ebf7
    TAG 1.0.0
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
