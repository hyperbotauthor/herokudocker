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
python ––version

echo "install gcc"
sudo apt-get install build-essential -y
gcc --version

echo "install git"
sudo apt-get install git -y

echo "install lc0"
sudo apt-get update -y
sudo apt-get install -y ninja-build
sudo apt-get install -y libopenblas-dev
git clone -b release/0.23 --recurse-submodules https://github.com/LeelaChessZero/lc0.git
cd lc0
git clone https://github.com/mesonbuild/meson.git meson
sed -i 's/meson /meson\/meson.py /g' build.sh
cat build.sh

./build.sh
