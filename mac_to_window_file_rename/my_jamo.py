import os, shutil
from unicode import join_jamos

pwd = os.getcwd()
base_dir = os.path.join(pwd, 'myjamo')
files = os.listdir(base_dir)

log_path = os.path.join(base_dir, 'myjamolog.txt')
log = open(log_path, "a")

for file in files:
    shutil.move(f'{base_dir}/{file}', f'{base_dir}/{join_jamos(file)}')
    log.write(f'{file} -> {join_jamos(file)}\n')
    print(f'{base_dir}/{file} -> {base_dir}/{join_jamos(file)}')