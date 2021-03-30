#!/bin/bash

algo run demo/Hello -d "HAL 9000"

algo run nlp/LDA/1.0.0 -j "{\"docsList\": [\"It's apple picking season\", \"The apples are ready for picking\"]}"

algo run demo/Hello -d "HAL 9001" --debug --timeout 60 --output results.txt

algo run util/whoopsWrongAlgo -d "Hello World"

algo mkdir .my/img_directory

algo cp ./friends.jpg data://.my/img_directory

algo run dlib/FaceDetection/0.2.1 -j "{\"images\": [{\"url\": \"data://.my/img_directory/friends.jpg\",\"output\": \"data://.algo/temp/detected_faces.png\"}]}"

algo cp data://.algo/dlib/FaceDetection/temp/detected_faces.png ./detected_faces.png