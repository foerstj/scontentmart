:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m printouts.equipment --bits "%bits%" --out "%bits%\gaspy"
if %errorlevel% neq 0 pause
popd
