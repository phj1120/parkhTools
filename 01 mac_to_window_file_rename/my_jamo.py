import unicodedata
import os, shutil
from unicode import join_jamos

pwd = os.getcwd()
base_dir = os.path.join(pwd, 'myjamo')
files = os.listdir(base_dir)

log_path = os.path.join(base_dir, '../myjamolog.txt')
log = open(log_path, "a", encoding='utf-8')

for file in files:
    name = unicodedata.normalize('NFC', file)

    print(f'{file} -> {name}')
    shutil.move(f'{base_dir}/{file}', f'{base_dir}/{name}')
    log.write(f'{file} -> {name}\n')

    # shutil.move(f'{base_dir}/{name}', f'{base_dir}/{join_jamos(name)}')
    # log.write(f'{name} -> {join_jamos(name)}\n')
    # print(f'{base_dir}/{file} -> {base_dir}/{join_jamos(file)}')
