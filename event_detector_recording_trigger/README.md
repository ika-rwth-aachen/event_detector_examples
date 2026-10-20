# Example | *Event Detector Recording Trigger*

This example tests the event detector with the recording trigger plugin, running alongside an [`event_detector_bag_recording`](https://github.com/ika-rwth-aachen/event_detector_bag_recording) node. It plays a ROS 2 bagfile containing the poses, point clouds, images, and object lists of two vehicles. The recording trigger plugin evaluates the [`BagRecordingProximityRule`](../event_detector_recording_trigger_plugin/README.md#bagrecordingproximityrule) on the two vehicle poses; whenever the vehicles come within `max_distance_to_start_recording` of each other, it triggers the bag recording node to record the [configured topics](event_detector_recording_trigger_plugin.params.yml) into a new ROS 2 bagfile. Both the original and the recorded ROS 2 bagfile are visualized in RViz.

```bash
# example/
docker compose up
```

Two RViz windows open. The window for the original ROS 2 bagfile (left) shows the point clouds and object lists of both vehicles.

<p align="center">
  <img src="assets/original.png" width="48%">
  <img src="assets/recorded.png" width="48%">
</p>

Once a new ROS 2 bagfile has been recorded, the second RViz window plays it back. The recorded ROS 2 bagfiles are written to [`rosbags-saved`](rosbags-saved/). The scenario runs in a loop, so a new bagfile is recorded on every iteration — stop the example with `Ctrl+C` once you have seen a recording.
