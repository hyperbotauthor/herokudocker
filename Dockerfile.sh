echo "update"
apt-get update -y

echo "install sudo"
apt-get install curl -y
apt-get install sudo -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

echo "install git"
sudo apt-get install git -y

echo "clone lila"
git clone --recursive https://github.com/ornicar/lila.git
