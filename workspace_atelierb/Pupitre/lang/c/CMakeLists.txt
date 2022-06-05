project(Pupitre)

SET(CMAKE_BUILD_TYPE Debug)

cmake_minimum_required(VERSION 2.4)

SET(CMAKE_BUILD_TYPE Debug)

SET(Pupitre_SOURCES
    CTX_i.c
    ControlUnit_i.c
    digicode_i.c
    Root_pupitre_i.c
    httpServer_i.c
    com_debug_i.c
    incidentMng_i.c
    b_main.c
)
SET(Pupitre_HEADERS
    CTX.h
    com_debug.h
    ControlUnit.h
    digicode.h
    httpServer.h
    Root_pupitre.h
    incidentLMng.h
)
add_executable(Pupitre ${Pupitre_SOURCES} ${Pupitre_HEADERS})
