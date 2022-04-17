build_wiregrid() {

    echo "Creating build directory at \"./build/\".."
    mkdir -p build/

    echo "Running cmake.."
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_C_COMPILER=$CC -B build/ .

}

build_wiregrid
