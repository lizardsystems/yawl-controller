call env.cmd
if exist %PLATFORMIO_VENV%\  rmdir /s /q %PLATFORMIO_VENV%
%PYTHON_PATH%\python.exe -m venv %PLATFORMIO_VENV%
call %PLATFORMIO_VENV%\Scripts\activate
python.exe -m pip install --upgrade pip
pip install --upgrade wheel
pip install --upgrade git+%PLATFORMIO_REPO%@%PLATFORMIO_BRANCH%
