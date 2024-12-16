#online：
:'
rm -rf /path/to/your/directory/*
'
sudo apt update

sudo add-apt-repository ppa:named-data/ppa

sudo apt update

sudo apt install python3-pip

sudo apt install git

cd ..
mkdir ubuntu22.04
cd ubuntu22.04
mkdir pkg-use
cd pkg-use
mkdir use1
cd use1
sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev | grep "^\w" | sort -u)
mkdir ./archives
sudo dpkg-scanpackages -m . /dev/null | gzip -9c > Packages.gz
cp Packages.gz ./archives
cd ../..

#sudo chmod 777 -R ./
cd pkg-use
mkdir use2
cd use2
sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances doxygen graphviz python3-pip | grep "^\w" | sort -u)
mkdir ./archives
sudo dpkg-scanpackages -m . /dev/null | gzip -9c > Packages.gz
cp Packages.gz ./archives
cd ../..

mkdir py_sphinx_packages  # 创建保存py包的文件夹
cd py_sphinx_packages
pip3 download sphinx sphinxcontrib-doxylink
cd ..
#pip3 install --no-index --find-links=/path/to/sphinx_packages sphinx sphinxcontrib-doxylink(离线环境)

cd pkg-use
mkdir use3
cd use3
sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances software-properties-common | grep "^\w" | sort -u)
mkdir ./archives
sudo dpkg-scanpackages -m . /dev/null | gzip -9c > Packages.gz
cp Packages.gz ./archives
cd ../..

cd pkg-use
mkdir use4
cd use4
sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances libpcap-dev libsystemd-dev | grep "^\w" | sort -u)
mkdir ./archives
sudo dpkg-scanpackages -m . /dev/null | gzip -9c > Packages.gz
cp Packages.gz ./archives
cd ../..

:'
cd pkg-use
mkdir use5
cd use5
sudo apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances nfd | grep "^\w" | sort -u)
mkdir ./archives
sudo dpkg-scanpackages -m . /dev/null | gzip -9c > Packages.gz
cp Packages.gz ./archives
cd ../..
'
cd pkg-use
mkdir use5
cd use5
wget https://launchpad.net/~named-data/+archive/ubuntu/ppa/+files/nfd_22.12-33-ge277f8b9-ppa2~jammy_amd64.deb
cd ../..

#sudo dpkg -i nfd_22.12-33-ge277f8b9-ppa2~focal_amd64.deb
#sudo apt --fix-broken install
#nfd --version


