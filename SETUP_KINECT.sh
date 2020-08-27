#!/bin/sh
sudo apt-get update
sudo apt-get -y install libglu1-mesa-dev freeglut3-dev mesa-common-dev openssl ninja-build libssl-dev libsoundio-dev libxinerama-dev libsdl2-dev

wget https://www.nuget.org/api/v2/package/Microsoft.Azure.Kinect.Sensor/1.4.0-alpha.4
unzip -d 1.4.0-alpha 1.4.0-alpha.4
sudo chmod a+rwx /lib/aarch64-linux-gnu
sudo mv 1.4.0-alpha/linux/lib/native/arm64/release/libdepthengine.so.2.0 /lib/aarch64-linux-gnu/

git clone https://github.com/microsoft/Azure-Kinect-Sensor-SDK.git
cd Azure-Kinect-Sensor-SDK
mkdir build
cd build
cmake .. -GNinja
ninja
sudo chmod a+rwx /etc/udev/rules.d
cp ~/Azure-Kinect-Sensor-SDK/scripts/99-k4a.rules /etc/udev/rules.d/
