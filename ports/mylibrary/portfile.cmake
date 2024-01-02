vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO singhmayank123/mylibrary
    REF ca177c7e4b73e744ed09037b67de4241decd0751
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
