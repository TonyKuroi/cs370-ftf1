if (UNIX)
    set(CMAKE_ASM${ASM_DIALECT}_OUTPUT_EXTENSION .o)
else ()
    set(CMAKE_ASM${ASM_DIALECT}_OUTPUT_EXTENSION .obj)
endif ()

set(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> <INCLUDES> <FLAGS> -o <OBJECT> <SOURCE>")

set(CMAKE_ASM${ASM_DIALECT}_CREATE_STATIC_LIBRARY
        "<CMAKE_AR> cr <TARGET> <LINK_FLAGS> <OBJECTS> "
        "<CMAKE_RANLIB> <TARGET> ")

set(CMAKE_ASM${ASM_DIALECT}_LINK_EXECUTABLE
        "<CMAKE_LINKER> <FLAGS> <CMAKE_ASM${ASM_DIALECT}_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")

# to be done
set(CMAKE_ASM${ASM_DIALECT}_CREATE_SHARED_LIBRARY)
set(CMAKE_ASM${ASM_DIALECT}_CREATE_SHARED_MODULE)

