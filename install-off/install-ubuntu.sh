#sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances python3 | grep "^\w" | sort -u)

version="ubuntu22.04"

cd "version"
sudo chmod 777 -R ./
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
for i in {1..4}
do
    sudo echo "deb [trusted=yes] file:///home/x/shell/$version/pkg-use/use$i archives/" | sudo tee -a /etc/apt/sources.list
done


sudo apt-get update

sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev

sudo apt install doxygen graphviz python3-pip

sudo pip3 install --no-index --find-links=/home/x/shell/ubuntu22.04/py_sphinx_packages sphinx sphinxcontrib-doxylink

sudo apt install software-properties-common

sudo apt install libpcap-dev libsystemd-dev
# or 
# sudo nano /etc/apt/sources.list
# 末尾添加deb [trusted=yes] file:///home/x/pkg-use/ archives/
# oror sudo echo "deb [trusted=yes] file:///home/x/pkg-use/ archives/" | sudo tee -a /etc/apt/sources.list

#delete after install
#sudo echo "deb [trusted=yes] file:///home/x/use archives/" | sudo tee -a /etc/apt/sources.list



cd src
cd ndn-cxx
./waf configure
./waf
sudo ./waf install
cd ..
cd NFD
./waf configure
./waf
sudo ./waf install
sudo cp /usr/local/etc/ndn/nfd.conf.sample /usr/local/etc/ndn/nfd.conf
sudo ldconfig #or reboot

