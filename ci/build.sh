build_wiregrid() {

    if [ ${OS_NAME} == 'macos-latest' ] && [ ${CC} == 'gcc' ]; then
        # since the system's gcc is just a symlink to clang on macos,
        # we have to specifically mention the path to it
        CC='/usr/local/bin/gcc'
    fi

    echo 'Running cmake..'
    cmake -B build/ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON . || exit

    echo 'Running make..'
    make -C build/ || exit

}

build_wiregrid
