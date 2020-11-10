echo "install sudo"
apt-get update -y
apt-get install curl -y
apt-get install sudo -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

echo "install python"
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update -y
sudo apt-get install python3.8 -y
sudo apt-get update -y
sudo apt-get install python2.7 -y
echo "python version"
python3 ––version
python ––version

echo "install gcc"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get install gcc-8 g++-8
gcc --version

echo "install git"
sudo apt-get install git -y

echo "install lc0"
sudo apt-get update -y
sudo apt-get install libstdc++-8-dev clang-6.0 ninja-build pkg-config -y
sudo apt-get install -y ninja-build
sudo apt-get install -y libopenblas-dev
git clone -b release/0.23 --recurse-submodules https://github.com/LeelaChessZero/lc0.git
cd lc0
git clone https://github.com/mesonbuild/meson.git meson
sed -i 's/meson /meson\/meson.py /g' build.sh
PATH = $PATH:~/.local/bin
CC=clang-6.0 CXX=clang++-6.0 INSTALL_PREFIX=~/.local ./build.sh

echo "uci" | lc0/build/release/lc0
