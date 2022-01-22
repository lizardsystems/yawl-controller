call env.cmd
call %ESPHOME_VENV%\Scripts\activate
esphome compile yawl-controller-%1.yaml 
xcopy /f /y ".esphome/build/yawl-controller/.pioenvs/yawl-controller/firmware.bin"  "yawl-controller-%1.bin"