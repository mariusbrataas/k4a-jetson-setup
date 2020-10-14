# Azure-Kinect-Jetson-Nano-setup

Download the (image)[https://developer.nvidia.com/jetson-nano-sd-card-image] for the Jetson SD-card.

Flash the SD-card. I recommend using (Balena Etcher)[https://www.balena.io/etcher/].

Afterwards, run this command in the terminal on the Jetson to setup everything:

```
git clone https://github.com/mariusbrataas/k4a-jetson-setup.git && cd k4a-jetson-setup && sudo chmod 755 ./SETUP_ALL.sh && sudo ./SETUP_ALL.sh
```
