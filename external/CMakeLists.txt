add_library(external INTERFACE)

add_subdirectory(SDL)
target_link_libraries(external INTERFACE SDL2-static)