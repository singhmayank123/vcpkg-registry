vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO singhmayank123/mylibrary
    REF 6d48797c400976aaa4f7a5bc99eb1daae29525a2
    SHA512 0ff7809d6196ef7eaea2dafa927d568a7925ccd743117a49dbf0ff45008f3c0d5869d0fb9eb839a5d03cbc8452eeeae5eb9fd3f610ac62d9a139a4586d80ead1
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
