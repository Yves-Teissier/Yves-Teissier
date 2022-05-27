project(Pupitre)

cmake_minimum_required(VERSION 2.4)

SET(Pupitre_SOURCES
    CTX_i.c
    ControlUnit_i.c
    digicode_i.c
    httpServer_i.c
    b_main.c
)
SET(Pupitre_HEADERS
    CTX.h
    ControlUnit.h
    digicode.h
    httpServer.h
)
add_executable(Pupitre ${Pupitre_SOURCES} ${Pupitre_HEADERS})
