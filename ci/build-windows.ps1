if ($Env:CONFIG -eq 'MSVC') {
    # Microsoft Visual C Compiler
    $Env:CC = 'cl'
    cmake -B build\
    cd build\ && nmake /F Makefile

} elseif ($Env:CONFIG -eq 'MINGW') {
    # MinGW gcc for Windows
    $Env:CC = 'gcc.exe'
    # see https://www.msys2.org/docs/cmake/ for generators
    cmake -G "MinGW Makefiles" -B build\
    make -C build\
}
