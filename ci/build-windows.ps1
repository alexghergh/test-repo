if ($Env:CONFIG -eq 'MSVC') {
    # Microsoft Visual C Compiler
    $Env:CC = 'cl'
    cmake -B build/

} elseif ($Env:CONFIG -eq 'MINGW') {
    # MinGW gcc for Windows
    $Env:CC = 'gcc.exe'
    cmake -G "MinGW Makefiles" -B build/
}
