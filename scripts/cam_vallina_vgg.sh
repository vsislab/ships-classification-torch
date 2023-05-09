#!/bin/bash

python ./visualization/cam.py --gpus 0 --model_name 'vgg11_bn' --save_path './cam_add/' --images_path './data/images/' --alpha '00' & python ./visualization/cam.py --gpus 0 --model_name 'vgg13_bn' --save_path './cam_add/' --images_path './data/images/' --alpha '00' 
python ./visualization/cam.py --gpus 0 --model_name 'vgg16_bn' --save_path './cam_add/' --images_path './data/images/' --alpha '00' 
python ./visualization/cam.py --gpus 0 --model_name 'vgg19_bn' --save_path './cam_add/' --images_path './data/images/' --alpha '00' 

