:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m jinja gaspy\armor-merchants.gas.jinja world\contentdb\templates\scontentmart\actors --for-all gaspy\armors.csv --bits "%bits%"
if %errorlevel% neq 0 pause

venv\Scripts\python -m jinja gaspy\shops.gas.jinja world\contentdb\templates\scontentmart\actors merchant.gas --for-all gaspy\shops.csv --value v=v --bits "%bits%"
if %errorlevel% neq 0 pause
venv\Scripts\python -m jinja gaspy\shops.gas.jinja world\contentdb\templates\scontentmart\actors dsx_merchant.gas --for-all gaspy\shops.csv --value v=loa --bits "%bits%"
if %errorlevel% neq 0 pause
popd
