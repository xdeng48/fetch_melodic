if [ -z "$1" ]
  then
    echo "Please supply your username which will be used as the container name"
    exit 1
fi
docker stop $1
docker rm $1