include(Compiler/PGI)
__compiler_pgi(C)
string(APPEND CMAKE_C_FLAGS_MINSIZEREL_INIT " -DNDEBUG")
string(APPEND CMAKE_C_FLAGS_RELEASE_INIT " -DNDEBUG")

if (CMAKE_C_COMPILER_VERSION VERSION_GREATER_EQUAL 12.10)
    set(CMAKE_C90_STANDARD_COMPILE_OPTION -c89)
    set(CMAKE_C90_EXTENSION_COMPILE_OPTION -c89)
    set(CMAKE_C99_STANDARD_COMPILE_OPTION -c99)
    set(CMAKE_C99_EXTENSION_COMPILE_OPTION -c99)
    if (CMAKE_C_COMPILER_VERSION VERSION_GREATER_EQUAL 15.3)
        set(CMAKE_C11_STANDARD_COMPILE_OPTION -c11)
        set(CMAKE_C11_EXTENSION_COMPILE_OPTION -c11)
    endif ()
endif ()

__compiler_check_default_language_standard(C 12.10 90)
