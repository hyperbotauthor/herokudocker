echo "configure tzdata"
export TZ=Europe/Kiev
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

echo "install mongodb"
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && (echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list) && apt-get update -y && apt-get install -y mongodb-org-server && mkdir -p /data/db
sudo apt-get install mongodb-org -y
sudo apt-get update -y
mongo --version
#mongod &
