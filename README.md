# mm8803-perception
Docker image for perception tasks, as well as handy-dandy shell scripts, and a lightweight VNC GUI.

## Scripts
Here is an explanation of the scripts we provide, in the order you'll probably use them:

- pull.sh : This file is for pulling image from Dockerhub, it is the first step you should do if you don't have this Docker image locally on your computer. To use it,

    `$ ./pull.sh`

- run.sh : This file is for creating a Docker container with exactly one parameter as the name of your container. Assume you are still in the mm8803-perception directory,

    `$ ./run.sh YOUR_USERNAME`

- connect.sh : This file is for running the Docker container with one parameter, which is your container name specified in previous step. After you execute this, you will be in the container. The color of the characters will change from green to grey on our lab computers.

    `$ ./connect.sh YOUR_USERNAME`

- save.sh : This is for saving your work (file changes or setting changes) in your container.

    `$ ./save.sh YOUR_USERNAME`

- stop.sh : This is the last step to fully stop the container and remove it (but if you saved it you will not lose data).

    `$ ./stop.sh YOUR_USERNAME`

- restart.sh : This is for retrieving your previous work in the saved image,

    `$ ./restart.sh YOUR_USERNAME`

Please note that all above commands should be executed on the host computer, not in the container.

## Usage with VNC

We provide a special script, vnc.sh, that does the appropriate volume and port mapping, and pulls the image from Docker hub, if needed:

- `./vnc.sh` 
- point a VNC client to 0.0.0.0:5900
- open a bash shell via context menu of windows manager

## VNC Clients

VNC Clients are 
- [Chicken of the VNC](https://sourceforge.net/projects/cotvnc/) for mac.
- [VNC Connect Viewer](https://www.realvnc.com/en/connect/download/viewer/) for mac/windows
- [VNC Connect extension for Chrome](https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla)

## Building

To build:

- `docker build -t gtmobilemanipulation/mm8803-perception .`

## Dockerfile details

Adding MASKRCNN prerequisites to a ROS desktop-full image.

In addition, we add a minmal VNC server setup based on [this blog post by Stephen Fox](https://medium.com/dot-debug/running-chrome-in-a-docker-container-a55e7f4da4a8), in turn based on [a minimal VNC server with the Fluxbox window manager](https://www.richud.com/wiki/Ubuntu_Fluxbox_GUI_with_x11vnc_and_Xvfb).

