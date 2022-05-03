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

    $Env:PATH = "D:\msys64\usr\bin;$Env:PATH"

    # MinGW gcc for Windows
    $Env:CC = 'gcc'

    # see https://www.msys2.org/docs/cmake/ for generators
    cmake -G "MinGW Makefiles" -B build\ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ; exitIfFailed

    make -C build\ ; exitIfFailed
}
