 # -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE="include-what-you-use;-w;-Xiwyu;--verbose=1"\
 # -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE="include-what-you-use;-w;-Xiwyu;--verbose=1"\

CXX=clang++-18 CC=clang cmake -B./build/debug -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug . && cd build/debug && ninja 
# cd ./build/debug && CXX=clang++-18 CC=clang cmake -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug ../.. && ninja 

 # -B./build/debug \
 # \
 # \
 # -GNinja
 # .
# cd build/debug/ &&\
# time -p n/inja 
