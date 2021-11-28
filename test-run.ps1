# You'll need to enable powershell scripts to execute this, or else
# just paste everything below into a powershell windows.
#
#

function AttemptRun() {
  Param([String] $Config)
  echo "== ${Config}"
  echo ""

  cmake -G Ninja "-DCMAKE_BUILD_TYPE=${Config}" -B dll/build dll
  cmake --build dll/build --config $Config --clean-first
  cmake --install dll/build --config $Config

  cmake -G Ninja "-DCMAKE_BUILD_TYPE=${Config}" -B build .
  cmake --build build  --config $Config --clean-first
  cmake --install build --config $Config

  if (!(Test-Path ./App/App.exe)) {
    throw "Failed: could not find App/App.exe"
  }
  if (!(Test-Path ./App/dllD.dll)) {
    throw "Failed: dllD.dll was not copied to ./App"
  }
  echo "-- Running App.exe:"
  & ./App/App.exe
  echo ""
}

AttemptRun "Debug"
AttemptRun "Release"
AttemptRun "RelWithDebInfo"
