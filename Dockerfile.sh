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

echo "install sbt"
sudo apt-get upgrade -y
sudo apt-get install default-jdk -y
wget www.scala-lang.org/files/archive/scala-2.13.0.deb
sudo dpkg -i scala*.deb

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update -y
sudo apt-get install sbt -y

cd lila
chmod +x lila

./lila compile
