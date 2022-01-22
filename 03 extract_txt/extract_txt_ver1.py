import csv
import os

result_path = 'result'
folder_path = 'data/위원별 직무모형 검증지/점수표'
folders = os.listdir(folder_path)
professors = ['강성범', '김현주', '오석', '윤영현', '이장호', '정기수', '정필성', '진용화', '하재승']


if not os.path.isdir(result_path):
    os.mkdir(result_path)

for professor in professors:
    for folder in folders:
        # professor = '하재승'
        csv_file = open(f'{result_path}/{professor}.csv','a', newline='')
        wr = csv.writer(csv_file)
        print('*' * 50)
        files = os.listdir(f'{folder_path}/{folder}')
        print(professor)
        print('*' * 50)
        print(folder)
        for file in files:
            txt_file = open(f'{folder_path}/{folder}/{file}', 'r', encoding='UTF-8')
            file_content = txt_file.readlines()

            professor_index = file_content.index(f"--- {professor} ---\n")
            print(file)
            # print(file_content[professor_index])
            extract_txt = file_content[professor_index+1]
            # print(extract_txt)
            avg = extract_txt[-4:-1]

            data = [extract_txt[1], extract_txt[4], extract_txt[7], avg, 'O' if float(avg)>=3.5 else 'X']
            print(data)
            wr.writerow(data)

        print('*' * 50)
