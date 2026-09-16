echo 'Hello! we need to clone stuffs needed for your device, please wait tll process complete'

echo 'Cloning Device Common Tree'
	git clone https://github.com/dhanush281/device_xiaomi_sm8450-common.git -b 17 device/xiaomi/sm8450-common

echo "Cloning MemeCamera Tree"
git clone https://github.com/dhanush281/device_xiaomi_miuicamera-marble device/xiaomi/miuicamera-marble
git clone https://github.com/dhanush281/vendor_xiaomi_miuicamera-marble vendor/xiaomi/miuicamera-marble

echo 'Cloning Hardware Dolby Tree'
    git clone https://github.com/dhanush281/android_hardware_dolby.git -b 17 hardware/dolby

echo 'Cloning Hardware Xiaomi Tree'
	git clone https://github.com/dhanush281/android_hardware_xiaomi.git -b 17 hardware/xiaomi

echo 'Cloning Kernel Tree'
    git clone https://github.com/dhanush281/android_kernel_xiaomi_sm8450.git kernel/xiaomi/sm8450
    git clone https://github.com/dhanush281/android_kernel_xiaomi_sm8450-devicetrees.git kernel/xiaomi/sm8450-devicetrees
    git clone https://github.com/dhanush281/android_kernel_xiaomi_sm8450-modules.git kernel/xiaomi/sm8450-modules

echo 'Cloning Vendor Tree'
    git clone https://github.com/dhanush281/vendor_xiaomi_marble -b 17 vendor/xiaomi/marble

echo 'Cloning Vendor Common Tree'
    git clone https://github.com/dhanush281/vendor_xiaomi_sm8450-common.git -b 17 vendor/xiaomi/sm8450-common

echo 'Firmware'
	git clone https://github.com/dhanush281/vendor_xiaomi_marble-firmware vendor/xiaomi/marble-firmware

if bash device/xiaomi/miuicamera-marble/vendorsetup.sh; then
    echo "MemeCam parts patched"
else
    echo "MemeCam parts not patched"
fi
export NINJA_ARGS="-w dupbuild=warn"
export SKIP_ABI_CHECKS=true

echo "All repositories cloned successfully "