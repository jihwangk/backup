# Ubuntu Config

## Graphics Instructions

1. Get the available repos with 'apt update':
```bash
sudo apt update
```

3. Install NVIDIA graphics driver. Check compatible Nvidia driver version from https://www.nvidia.com/Download/index.aspx?lang=en-us:
```bash
sudo apt install nvidia-driver-430
```

4. Install CUDA from runfile. Don't install the drivers. Get commands from https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=runfilelocal
```bash
wget http://developer.download.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda_10.1.243_418.87.00_linux.run
sudo sh cuda_10.1.243_418.87.00_linux.run
```

5. Set xconfig:
```bash
sudo nvidia-xconfig
```

6. Restart computer.

7. Test with samples:
```bash
cd SAMPLES_DIR/1_Utilities/deviceQuery
make
./deviceQuery
```

## Mounting External Harddrive

1. Mount HDD partition:
```bash
sudo mkdir /hdd
sudo mount /dev/sda1 /hdd
```

2. then give permissions to user:
```bash
sudo chown -R jihwangk:jihwangk /hdd/
```

3. Add the following to `/etc/fstab` to that the partition is mounted by default:
```
# HDD
/dev/sda1     /hdd      ext4        defaults      0       0
```

## Installing Basic Programs

1. Run the setup:
```bash
sudo ./setup_machine
```

