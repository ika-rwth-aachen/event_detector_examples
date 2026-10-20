# Example | *Event Detector Bag Recording*

This example tests the event detector with the bag recording plugin. It plays a ROS 2 bagfile containing a point cloud and an object list. The bag recording plugin then records only the object list to a new ROS 2 bagfile. Both the original and the recorded ROS 2 bagfile are visualized in RViz.

```bash
# example/
docker compose up
```

Two RViz windows open. The window for the original ROS 2 bagfile shows both the point cloud and the object list.

<p align="center">
  <img src="assets/original_pcl_and_object_list.png" width="48%">
  <img src="assets/recorded_object_list.png" width="48%">
</p>

Once the new ROS 2 bagfile has been recorded, the second RViz window shows only the recorded object list. The recorded ROS 2 bagfile is written to [`rosbags-saved`](rosbags-saved/).
