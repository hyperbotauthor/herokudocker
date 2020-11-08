echo "update"
apt-get update -y

echo "install sudo"
apt-get install curl -y
apt-get install sudo -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

echo "install nodejs"
sudo apt-get install nodejs -y

echo "install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

echo "install git"
sudo apt-get install git -y

echo "clone lila"
git clone --recursive https://github.com/ornicar/lila.git

cd lila

echo "ui build"
chmod +x ui/build
./ui/build

echo "install sbt"
sudo apt-get upgrade -y
sudo apt-get install default-jdk -y
wget www.scala-lang.org/files/archive/scala-2.13.0.deb
sudo dpkg -i scala*.deb

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update -y
sudo apt-get install sbt -y

echo "lila compile"
chmod +x lila
./lila compile

#echo "install mongodb"
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && (echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list) && apt-get update && apt-get install -y mongodb-org && mkdir -p /data/db
#mongod &

#echo "install redis"
#sudo apt update
#sudo apt install redis-server
#redis-server &

#echo "lila run"
#./lila run
