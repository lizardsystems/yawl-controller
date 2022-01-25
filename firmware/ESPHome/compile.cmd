call env.cmd
call %ESPHOME_VENV%\Scripts\activate
esphome compile yawl-controller-%1.yaml 
python copy_firmware.py %1
