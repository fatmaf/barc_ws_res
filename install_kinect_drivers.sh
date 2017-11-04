git clone git@github.com:avin2/SensorKinect.git
sudo apt-get install libusb-1.0-0-dev freeglut3-dev
cd SensorKinect/Platform/Linux/CreateRedist/
./RedistMaker
cd ../Redist/Sensor-Bin-Linux-x64-v5.1.2.1/
sudo ./install.sh
