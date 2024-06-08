time -p cmake\
 -B./build/debug \
 -DCMAKE_BUILD_TYPE=Debug\
 -DCMAKE_EXPORT_COMPILE_COMMANDS=ON\
 -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE="include-what-you-use;-w;-Xiwyu;--verbose=1"\
 .
cd build/debug/ &&\
time -p make -j8
