if ($Env:CONFIG -eq "MSVC") {
    # Microsoft Visual C Compiler
    $Env:CC = cl
    cmake -B build/

} else if ($Env:CONFIG -eq "MINGW") {
    # MinGW gcc for Windows
    $Env:CC = gcc
    cmake -B build/
}
