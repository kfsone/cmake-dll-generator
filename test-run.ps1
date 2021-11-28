# You'll need to enable powershell scripts to execute this, or else
# just paste everything below into a powershell windows.
#
#

cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B dll/build dll
cmake --build dll/build
cmake --install dll/build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -B dll/build dll
cmake --build dll/build
cmake --install dll/build

cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B build .
cmake --build build  # fails
#cmake --install build
