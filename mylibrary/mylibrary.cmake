vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO singhmayank123/mylibrary
    TAG 1.0.0
)

add_library(mylibrary INTERFACE)
target_include_directories(mylibrary INTERFACE ${SOURCE_PATH})

