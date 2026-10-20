while true; do
  folders=$(find /rosbags-saved -mindepth 1 -maxdepth 1 -type d)
  if [ -n "$folders" ]; then
    for folder in $folders; do
      if [ -f "$folder/metadata.yaml" ]; then
        echo "Found metadata.yaml in $folder"
        echo "Running ros2 bag play -r 0.5 $folder --clock"
        ros2 bag play -r 0.5 "$folder" --clock
      fi
    done
  fi
  sleep 1
done
