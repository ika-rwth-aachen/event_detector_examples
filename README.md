# Event Detector Examples

<p align="center">
  <img src="https://img.shields.io/github/license/ika-rwth-aachen/event_detector_examples"/>
</p>

This repository presents exemplary use cases for the ROS 2 [event detector framework](https://github.com/ika-rwth-aachen/event_detector).

For each existing [action plugin](https://github.com/ika-rwth-aachen/event_detector?tab=readme-ov-file#action-plugins) of the event detector, examples are provided as reproducible Docker Compose setups. Each example use case contains a quick start guide for quick and easy reproduction.

| Common Name                                                                              | Action Plugin                      | Purpose                                          | Examples                                  |
| ---------------------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------------------ | ----------------------------------------- |
| [ROS Bag Recording](https://github.com/ika-rwth-aachen/event_detector_bag_recording)     | `event_detector_bag_recording`     | write data from buffer to ROS bag file           | [Link](#event_detector_bag_recording)     |
| [Database Recording](https://github.com/ika-rwth-aachen/event_detector_db_recording)     | `event_detector_db_recording`      | write data from buffer to a database             | [Link](#event_detector_db_recording)      |
| [Recording Trigger](https://github.com/ika-rwth-aachen/event_detector_recording_trigger) | `event_detector_recording_trigger` | trigger a (remote) data recording                | [Link](#event_detector_recording_trigger) |
| Kubernetes Operator                                                                      | *work in progress*                 | request deployment of applications in Kubernetes | [Link](#event_detector_operator)          |


## Examples

### event_detector_bag_recording

🔜 *coming soon*

### event_detector_db_recording

| Example                                                | Analysis Rule                                                                                                                                                                              | Description                                                |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------- |
| [Logging vehicle data](./event_detector_db_recording/logging_vehicle_data/) | [`RecordAllRule`](https://github.com/ika-rwth-aachen/event_detector_db_recording/tree/main/event_detector_db_recording_plugin/include/event_detector_db_recording_plugin/rules/record_all) | Records all kinematic and sensor data of a vehicle to a MongoDB database |

### event_detector_recording_trigger

🔜 *coming soon*

### event_detector_operator

🔜 *coming soon*
