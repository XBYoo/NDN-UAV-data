#更新下载源：

sudo apt update

#安装ndn-cxx依赖包：

sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev

sudo apt install doxygen graphviz python3-pip

pip3 install --user sphinx sphinxcontrib-doxylink

cd ndn-cxx

./waf configure

./waf

sudo ./waf install

cd ..

#装NFD前置：

sudo apt install software-properties-common

sudo apt install libpcap-dev libsystemd-dev

sudo add-apt-repository ppa:named-data/ppa

sudo apt update

sudo apt install nfd（必要）

sudo apt install git

#git代码：

git clone https://github.com/named-data/ndn-cxx.git

git clone --recursive https://github.com/named-data/NFD.git

#前置安装

#分别安装ndn-cxx、NFD：
cd NFD

./waf configure

./waf

sudo ./waf install

cd ..

sudo cp /usr/local/etc/ndn/nfd.conf.sample /usr/local/etc/ndn/nfd.conf

#更新系统

sudo apt update

sudo apt upgrade

sudo ldconfig

sudo reboot

#至此安装完毕，使用nfd-start

#关闭：nfd-stop

#状态：nfd-status

#若报错，尝试重新编译安装NFD

#更改NFD配置文件后，重新配置流程：

# ./waf clean ./waf configure ./waf sudo ./waf install

#启用例程（ndn-cxx）

./waf configure --with-examples

./waf

sudo ./waf install

sudo ldconfig
