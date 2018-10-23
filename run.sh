if [ -z "$1" ]
  then
    echo "Please supply your username which will be used as the container name"
    exit 1
fi
docker run -d --name $1 -it \
  --env="DISPLAY" \
  --workdir="/root" \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env QT_X11_NO_MITSHM=1 \
  ${2:-xdeng48/fetch_melodic:latest}
