# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language. Does the project name get used anywhere, when calling from nixs.
project(supplyHaskellFFIWithCMake LANGUAGES C)

# generate a library from sources
add_library(message
  SHARED
    src/Message.h
    src/Message.c
  )

# this is the exe file: nix-shell$ hello-world
add_executable(supplyHaskellFFIWithCMake src/hello-world.c)
