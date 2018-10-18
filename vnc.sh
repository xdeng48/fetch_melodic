docker run -it \
    --workdir="/root" \
    --volume="/Users/$USER/data/mask_rcnn_coco.h5:/root/.ros/mask_rcnn_coco.h5" \
    --volume="/Users/$USER/data:/root/data" \
    --env QT_X11_NO_MITSHM=1 \
    -p 5900:5900 \
    gtmobilemanipulation/mm8803-perception