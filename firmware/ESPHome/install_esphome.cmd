call env.cmd
if exist %ESPHOME_VENV%\  rmdir /s /q %ESPHOME_VENV%
%PYTHON_PATH%\python.exe -m venv %ESPHOME_VENV%
call %ESPHOME_VENV%\Scripts\activate
python.exe -m pip install --upgrade pip
pip3 install --upgrade git+%ESPHOME_REPO%@%ESPHOME_BRANCH%
