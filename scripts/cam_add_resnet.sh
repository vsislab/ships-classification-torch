#!/bin/bash

python ./visualization/cam.py --gpus 0 --model_name 'resnet18' --save_path './cam_add/' --images_path './data/add_info/02/' --alpha '02'
python ./visualization/cam.py --gpus 0 --model_name 'resnet34' --save_path './cam_add/' --images_path './data/add_info/02/' --alpha '02' 
python ./visualization/cam.py --gpus 0 --model_name 'resnet50' --save_path './cam_add/' --images_path './data/add_info/02/' --alpha '02' 
python ./visualization/cam.py --gpus 0 --model_name 'resnet101' --save_path './cam_add/' --images_path './data/add_info/02/' --alpha '02' 
python ./visualization/cam.py --gpus 0 --model_name 'resnet152' --save_path './cam_add/' --images_path './data/add_info/02/' --alpha '02' 
