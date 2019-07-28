# Ubuntu Config

## Graphics Instructions

1. Go into text-only mode using `CTRL+ALT+F2` and do:
```bash
sudo service lightdm stop
```

2. Add the graphics drivers PPA:

```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
```

3. Install NVIDIA graphics driver:
```bash
sudo apt install nvidia-driver-418
```

4. Install CUDA from runfile. Don't install the drivers. Install the samples.
```bash
sudo sh cuda_10.1.168_418.67_linux.run
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

Mount HDD partition:
```bash
sudo mkdir /hdd
sudo mount /dev/sda1 /hdd
```
then give permissions to user:
```bash
sudo chown -R jana:jana /hdd/jana/
```

Add the following to `/etc/fstab` to that the partition is mounted by default:
```
# HDD
/dev/sda1     /hdd      ext4        defaults      0       0
```
