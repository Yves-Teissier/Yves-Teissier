project(thermostat)

cmake_minimum_required(VERSION 2.4)

SET(thermostat_SOURCES
    CTX_i.c
    chaudiere_i.c
    target_i.c
    temperature_i.c
    thermostat_i.c
    timer_i.c
    b_main.c
)
SET(thermostat_HEADERS
    CTX.h
    chaudiere.h
    target.h
    temperature.h
    thermostat.h
    timer.h
)
add_executable(thermostat ${thermostat_SOURCES} ${thermostat_HEADERS})
