#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

apt-get update
apt-get remove -y python3-yaml

python -m pip install --upgrade pip
python -m pip install paddleocr==3.0.0

mkdir -p /PaddleOCR
git clone https://github.com/PaddlePaddle/PaddleOCR /PaddleOCR

python -m pip install -r /PaddleOCR/requirements.txt

git config user.name yblue-alt292
git config --global user.email yasue.aoyama@techport-toyota.co.jp



