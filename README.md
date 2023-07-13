# Ship Perception with Visual Structure

## Introduction
This repository provides the source code for our research on structure-based ship perception, including the vanilla ship recognition, keypoint-aware ship recognition, structure-to-texture ship generation, etc.

## Code Overview
The structure of the repository is as follows：

* ./data: Dataset annotation and associated scripts and image storage locations.
* ./configs: Parameter configuration module.
* ./model: Our main model with all its building blocks.
* ./utils: Utility functions for training, inference, and postprocessing.
* ./scripts: Scripts related to model training, inference, image and code download, visualization.
* ./visualization: CAM image visualization and experimental performance saving.

## Implementation
**Environment installation and data preparation**
```shell
conda create -n ships_class python==3.6
conda activate ships_class
pip install -r requirements.txt
sh ./scripts/data_preparation_class.sh
sh ./scripts/data_preparation.sh
```

**Training recognition Networks**

* The following describes the training of networks using the vanilla version of the data.

```shell
sh ./scripts/train_resnet_vallinia.sh
```

* The following describes the training of networks using data guided by key regions.

```shell
sh ./scripts/train_resnet_add.sh
```
* CAM image visualization
If further exploration of the CAM image is required, the raw data is stored in *.npy.
```shell
sh ./scripts/cam_download.sh
sh ./scripts/cam_vallina_resnet.sh
sh ./scripts/cam_add_resnet.sh
```

**Structure-Texture Generation Network**
For generating network selection, we used [CycleGAN and pix2pix in PyTorch](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix "CycleGAN and pix2pix in PyTorch"), without any additional modifications, and completed the experiments using only paired ship structure-texture images as data.

* Data preparation and training
```shell
sh ./scripts/gan_download.sh
```

* Testing with test dataset
```shell
python test.py --dataroot ./datasets/ships --name ships_pix2pix --model pix2pix --direction BtoA --num_test 1000 --epoch 200
```

* Testing with multi-view structural images generated from 3d data
```shell
python test.py --dataroot ./datasets/multi_view_ships --name ships_pix2pix --model pix2pix --direction BtoA --num_test 114 --epoch 200
```

## Contact
If you have any questions about the code and data, please contact.
Mingxin Zhang (202020646@mail.sdu.edu.cn)
