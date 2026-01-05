# Event Detector Examples

<p align="center">
  <img src="https://img.shields.io/github/license/ika-rwth-aachen/event_detector_examples"/>
</p>

This repository presents exemplary use cases for the ROS 2 [event detector framework](https://github.com/ika-rwth-aachen/event_detector).

For each existing [action plugin](https://github.com/ika-rwth-aachen/event_detector?tab=readme-ov-file#action-plugins) of the event detector, examples are provided as reproducible Docker Compose setups. Each example use case contains a quick start guide for quick and easy reproduction.

| Common Name                                                                          | Action Plugin                 | Purpose                                          | Examples                                  |
| ------------------------------------------------------------------------------------ | ----------------------------- | ------------------------------------------------ | ----------------------------------------- |
| [Database Recording](https://github.com/ika-rwth-aachen/event_detector_db_recording) | `event_detector_db_recording` | write data from buffer to a database             | [Link](#event_detector_db_recording)      |
| ROS Bag Recording                                                                    | *work in progress*            | write data from buffer to ROS bag file           |                                           |
| Recording Trigger                                                                    | *work in progress*            | trigger a (remote) data recording                |                                           |
| Kubernetes Operator                                                                  | *work in progress*            | request deployment of applications in Kubernetes |                                           |


## Examples

### event_detector_db_recording

| Example                                                | Analysis Rule                                                                                                                                                                              | Description                                                |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------- |
| [Logging vehicle data](./event_detector_db_recording/logging_vehicle_data/) | [`RecordAllRule`](https://github.com/ika-rwth-aachen/event_detector_db_recording/tree/main/event_detector_db_recording_plugin/include/event_detector_db_recording_plugin/rules/record_all) | Records all kinematic and sensor data of a vehicle to a MongoDB database |
