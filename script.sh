#!/bin/bash
operation=$1
repo=https://github.com/prb71/bitcot1.git


create () {
cd /home/ec2-user
rm -rf ./bitcot1
git clone $repo
cd ./bitcot1
echo "docker compose is creating"
sudo docker compose build --no-cache && sudo docker compose up -d 
}

destroy () {
cd /home/ec2-user/bitcot1
echo "docker compose is destroying"
sudo docker compose down
echo "Removing images from local system"
docker rmi -f $(docker images -aq)
}

case ${operation} in
  create) create ;;
    destroy) destroy ;;
       *) echo "Unknown action ${operation}" ;;
esac
