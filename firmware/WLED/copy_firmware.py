import json
import os
import shutil

WLED_BUILD_DIR = os.environ["WLED_BUILD_DIR"]
PACKAGE_FILE = os.path.join(WLED_BUILD_DIR, "package.json")
FIRMWARE_FILE = os.path.join(WLED_BUILD_DIR,".pio","build","yawl_controller","firmware.bin")
with open(PACKAGE_FILE, "r") as package:
    version = json.load(package)["version"]
    fname=f"yawl_controller_WLED_{version}.bin" 
    shutil.copy(FIRMWARE_FILE, fname)
    print(f"Copy firmware to {fname}")
    