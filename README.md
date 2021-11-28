Simulation of an external/out-of-tree DLL dependency that has configuration-specific naming.

# Usage

Build the DLL:

```powershell
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B dll/build dll
cmake-dll-generator\> cmake --build dll/build
cmake-dll-generator\> cmake --install dll/build
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -B dll/build dll
cmake-dll-generator\> cmake --build dll/build
cmake-dll-generator\> cmake --install dll/build
```

this populates ./dll/lib with a dllD.{lib,dll} and dllR.{lib,dll}.

```powershell
cmake-dll-generator\> cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B build .
cmake-dll-generator\> cmake --build build
```

This should build "build\App.exe".

Instead, we receive an error because the generator expression in
externaldll's `IMPORTED_IMPLIB` was passed as-is to the linker.
