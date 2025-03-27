FROM gitlab.ika.rwth-aachen.de:5050/fb-fi/its-modules/analysis/event_detector_db_recording:latest

RUN apt-get update && \
    apt-get install -y \
        ros-$ROS_DISTRO-rosbag2-storage-mcap
