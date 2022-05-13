# -*- coding: utf-8 -*-

import os
from PIL import Image

path = '../'  # 원본 폴더
resultPath = '../resize/'  # 대상 폴더

if not os.path.exists(resultPath):
    os.mkdir(resultPath)

list = os.listdir(path)

list.sort()

for filename in list:
    file = path + filename

    img = Image.open(file)
    img.save(os.path.join(resultPath, filename), 'JPEG', qualty=85)  # 품질 85로 줄이면서 용량 줄이기