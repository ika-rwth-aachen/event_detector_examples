## Recording on request | `event_detector_bag_recording`

This example tests the event detector with the bag recording plugin. It plays a ROS 2 bagfile containing the poses, point clouds, images, and object lists of two vehicles. A one-shot `StartRecording` message is published to the plugin, which then records the requested topics from the requested time window to a new ROS 2 bagfile. Both the original and the recorded ROS 2 bagfile are visualized in RViz.

### Quick Start

```bash
docker compose up
```

Two RViz windows open. The window for the original ROS 2 bagfile (left) shows the point clouds and object lists of both vehicles.

<p align="center">
  <img src="assets/original.png" width="48%">
  <img src="assets/recorded.png" width="48%">
</p>

Once a new ROS 2 bagfile has been recorded, its topics are visualized in the second RViz window. The recorded ROS 2 bagfiles are written to [`rosbags-saved`](rosbags-saved/). The scenario runs in a loop, so a new bagfile is recorded on every iteration — stop the example with `Ctrl+C` once you have seen a recording.
