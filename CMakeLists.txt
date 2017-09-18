cmake_minimum_required(VERSION 3.7)
project(cs370-ftf1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${cs370-ftf1_SOURCE_DIR}/cmake-build-debug")


set(SOURCE_FILES main.cpp main.cpp)
add_executable(cs370-ftf1 ${SOURCE_FILES})

find_package(SDL2 REQUIRED)
#find_package(SDL2_mixer REQUIRED)
#find_package(SDL2_image REQUIRED)
#find_package(SDL2_ttf REQUIRED)

include_directories(
        ${SDL2_INCLUDE_DIR}
#        ${SDL2_MIXER_INCLUDE_DIR}
#        ${SDL2_IMAGE_INCLUDE_DIR}
#        ${SDL2_TTF_INCLUDE_DIR}
        )


target_link_libraries(
        cs370-ftf1 ${SDL2_LIBRARY}
#        ${SDL2_MIXER_LIBRARIES}
#        ${SDL2_IMAGE_LIBRARIES}
#        ${SDL2_TTF_LIBRARIES}
        )
