FROM osrf/ros:melodic-desktop-full

# Install pip
RUN apt-get update && \ 
    apt-get install -y python-pip python-dev build-essential

# Install Tensorflow, Keras
RUN pip install ipython Cython numpy scipy scikit-image Pillow h5py tensorflow keras

# Install some niceties
RUN apt-get install -y less wget nano

# Make bash execute ros setup
RUN echo 'source /opt/ros/melodic/setup.bash' >> /root/.bashrc 

# Create ROS ws
RUN mkdir -p /root/catkin_ws/src && cd /root/catkin_ws

# Install a VNC X-server, Frame buffer, and windows manager
RUN apt-get install -y x11vnc xvfb fluxbox

# Finally, install wmctrl needed for bootstrap script
RUN apt-get install -y wmctrl 

# Copy bootstrap script and make sure it runs
COPY bootstrap.sh /

CMD '/bootstrap.sh'
