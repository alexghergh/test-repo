build_wiregrid() {

    echo "Running cmake.."
    cmake -B build/ .

    echo "Running make.."
    make -C build/

}

build_wiregrid
