# Install OpenNI

$ git clone https://github.com/OpenNI/OpenNI.git -b unstable

$ cd OpenNI/Platform/Linux/CreateRedist

$ bash RedistMaker

$ cd ../Redist/OpenNI-Bin-Dev-Linux-x86*/

$ sudo ./install.sh

# Install Sensor Kinect

$ cd ~/kinect

$ git clone https://github.com/avin2/SensorKinect

$ cd SensorKinect/Platform/Linux/CreateRedist

$ bash RedistMaker

$ cd ../Redist/Sensor-Bin-Linux-x86*

$ sudo sh install.sh

# Instalar NITE

# You must download this first
# http://www.openni.org/Downloads/OpenNIModules.aspx

$ cd ~/kinect

$ tar jxvf nite-bin-linux-x86-v1.5.2.21.tar.bz2

$ cd NITE-Bin-Dev-Linux-x86*/Data

$ chmod a+w *

$ vi *.xml

# Change like this
# <License vendor="PrimeSense" key="insert key here"/>
# <License vendor="PrimeSense" key="0KOIk2JeIBYClPWVnMoRKn5cdY4="/>

$ cd ..

$ sudo ./install.sh

# Test binaries here

~/kinect/OpenNI/Platform/Linux/Bin/x86-Release
~/kinect/NITE-Bin-Dev-Linux-x86*/Samples/Bin/x86-Debug

# Tools to help debug

- dmesg
- lsusb
- lsmod
- rmmod
