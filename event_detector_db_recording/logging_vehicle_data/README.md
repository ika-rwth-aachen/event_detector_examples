## Logging vehicle data | `record_all` | `event_detector_db_recording`

This example plays a ROS bag file and records all data on selected topics to a MongoDB database in chunks of 1 second. The recorded topics are:
- `geometry_msgs::msg::PoseStamped` on `/vehicles/Ego/pose`
- `geometry_msgs::msg::TwistStamped` on `/vehicles/Ego/twist`
- `geometry_msgs::msg::AccelStamped` on `/vehicles/Ego/acceleration`
- `sensor_msgs::msg::PointCloud2` on `/vehicles/Ego/drivers/front_lidar/pointcloud`

### Quick Start

1. Start the database, the database viewer, the event detector, and the data playback.
    ```bash
    docker compose up
    ```
1. Look out for log messages of the following kind, indicating the successful database storage.
    ```
    event-detector-1  | [event_detector-1] [INFO] [1739960826.282077886] [event_detector_db_recording_plugin]: Analyzed rule 'event_detector_db_recording_plugin::RecordAllRule' in 0.000191s
    event-detector-1  | [event_detector-1] [INFO] [1739960827.281885520] [event_detector_db_recording_plugin::RecordAllRule]: Recording 1.0s of selected data from 1 clients
    event-detector-1  | [event_detector-1] [INFO] [1739960827.348143441] [event_detector_db_recording_plugin]: Stored data for new scenario '67b5b1fb6f288300530d8be1'
    ```
1. Check out the database contents by visiting the *Mongo Express* web GUI at [`http://localhost:8081`](http://localhost:8081).
    - Log in using username `example` and password `example`.
    - View the `db` database.
    - Find the recorded data in different collections of the database.  
        <img src="./assets/db-collections.png" alt="mongo-express" height="250"/>
        <img src="./assets/db-document.png" alt="mongo-express" height="250"/>
    - Find `.pcd` files for the *large data* point clouds in a Docker volume.
        ```bash
        docker run --rm -it \
          -v logging_vehicle_data_db-large-data:/large_data \
          -w /large_data \
            rwthika/event_detector_db_recording:latest \
              find . -name "*.pcd"
        ```
1. Shut down all containers and remove all stored data.
    ```bash
    # Ctrl+c
    docker compose down -v
    ```
