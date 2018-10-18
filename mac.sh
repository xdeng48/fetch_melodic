docker run -d --name $1 \
    --env DISPLAY=docker.for.mac.localhost:0 \
    --workdir="/root" \
    --volume="/Users/$USER/data/mask_rcnn_coco.h5:/root/.ros/mask_rcnn_coco.h5" \
    --volume="/Users/$USER/data:/root/data" \
    --env QT_X11_NO_MITSHM=1 \
    gtmobilemanipulation/mm8803-perception:latest
