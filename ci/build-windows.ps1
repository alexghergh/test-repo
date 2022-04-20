function exitIfFailed() {
  if ($LastExitCode -ne 0) {
    exit $LastExitCode
  }
}

if ($Env:CONFIG -eq 'MSVC') {
    # Microsoft Visual C Compiler
    $Env:CC = 'cl'
    cmake -B build\ ; exitIfFailed

    cd build\
    nmake /F Makefile ; exitIfFailed

} elseif ($Env:CONFIG -eq 'MINGW') {
    # MinGW gcc for Windows
    $Env:CC = 'C:\msys64\usr\bin\gcc'

    # see https://www.msys2.org/docs/cmake/ for generators
    cmake -G "MinGW Makefiles" -B build\ ; exitIfFailed

    make -C build\ ; exitIfFailed
}
