call env.cmd
call %PLATFORMIO_VENV%\Scripts\activate
pio upgrade

pio update

if exist %WLED_BUILD_DIR% (
	echo Update WLED
	cd %WLED_BUILD_DIR%
	git pull 
	cd ..
) ELSE  ( 
	echo Clone WLED
	git clone -b %WLED_BRANCH% --single-branch %WLED_REPO% %WLED_BUILD_DIR%
)
xcopy /f /y  "platformio_override.ini"  "%WLED_BUILD_DIR%\platformio_override.ini*"

pio run --project-dir %WLED_BUILD_DIR%

python copy_firmware.py 

