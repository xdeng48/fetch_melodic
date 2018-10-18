if [ -z "$1" ]
  then
    echo "Please supply your username which will be used for the container name and tag"
    exit 1
fi
docker run -d --name $1 fetch_melodic:$1
