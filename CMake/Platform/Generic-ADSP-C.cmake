
include(Platform/Generic-ADSP-Common)


set(CMAKE_C_OUTPUT_EXTENSION ".doj")

string(APPEND CMAKE_C_FLAGS_DEBUG_INIT " -g")
string(APPEND CMAKE_C_FLAGS_MINSIZEREL_INIT " ")
string(APPEND CMAKE_C_FLAGS_RELEASE_INIT " ")
string(APPEND CMAKE_C_FLAGS_RELWITHDEBINFO_INIT " ")

set(CMAKE_C_CREATE_STATIC_LIBRARY
        "<CMAKE_C_COMPILER> -build-lib -proc ${ADSP_PROCESSOR} -si-revision ${ADSP_PROCESSOR_SILICIUM_REVISION} -o <TARGET> <CMAKE_C_LINK_FLAGS> <OBJECTS>")

set(CMAKE_C_LINK_EXECUTABLE
        "<CMAKE_C_COMPILER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")

set(CMAKE_C_CREATE_SHARED_LIBRARY)
set(CMAKE_C_CREATE_MODULE_LIBRARY)

