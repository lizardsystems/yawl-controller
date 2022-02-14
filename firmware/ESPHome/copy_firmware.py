import json
import os
import shutil
import argparse

DEVICE_NAME = "yawl-controller"

parser = argparse.ArgumentParser()
parser.add_argument("firmware_id", type=str, help="Firmware ID")
args = parser.parse_args()
firmware_id = args.firmware_id



PACKAGE_FILE = os.path.join(".esphome", f"{DEVICE_NAME}-{firmware_id}.yaml.json")

with open(PACKAGE_FILE, "r") as package:
    data = json.load(package)
    esphome_version = data["esphome_version"]
    firmware_bin_path =  data["firmware_bin_path"]
    # fname=f"{DEVICE_NAME}-{firmware_id}-{esphome_version}.bin" 
    fname=f"{DEVICE_NAME}-{firmware_id}.bin" 
    shutil.copy(firmware_bin_path, fname)
    print(f"Copy firmware to {fname}")
    