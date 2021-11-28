Simulation of an external/out-of-tree DLL dependency that has configuration-specific naming.

# Usage

Either run the `./test-run.ps1` script, or

## Build the DLL

```powershell
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B dll/build dll
cmake-dll-generator\> cmake --build dll/build
cmake-dll-generator\> cmake --install dll/build
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -B dll/build dll
cmake-dll-generator\> cmake --build dll/build
cmake-dll-generator\> cmake --install dll/build
```

this populates ./dll/lib with a dllD.{lib,dll} and dllR.{lib,dll}.

## Try to build the executable

```powershell
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B build .
cmake-dll-generator\> cmake --build build
cmake-dll-generator\> cmake --install build
```

This should build "build\App.exe" and install it into ./App/App.exe and ./App/dllD.dll
