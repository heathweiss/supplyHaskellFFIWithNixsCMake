# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language. Does the project name get used anywhere, when calling from nixs.
project(supplyHaskellFFIWithCMake LANGUAGES C)

# this is the exe file: nix-shell$ hello-world
add_executable(hello-cmake-world hello-world.c)
