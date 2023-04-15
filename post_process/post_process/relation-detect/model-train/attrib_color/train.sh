#!/usr/bin/env bash

# for single card train
# python3.7 tools/train.py -c ./ppcls/configs/ImageNet/ResNet/ResNet50.yaml

# for multi-cards train
# python3.7 -m paddle.distributed.launch --gpus="0,1,2,3" tools/train.py -c ./ppcls/configs/ImageNet/ResNet/ResNet50.yaml


# normal train
export CUDA_VISIBLE_DEVICES=6
#python3.7 tools/train.py -c ./ppcls/configs/truck_resnet50.yaml
#python3.7 tools/train.py -c ./ppcls/configs/car_resnet50.yaml
#python tools/train.py -c ./ppcls/configs/car_attri_r50.yaml


# distributed train
python -m paddle.distributed.launch --gpus="6" tools/train.py -c ./ppcls/configs/car_color_r50.yaml
