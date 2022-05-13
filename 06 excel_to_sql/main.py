import openpyxl

database_name = 'tools_springframework'


def get_last_row_num(sheet):
    last_row_num = 4
    while True:
        if not sheet[f'B{last_row_num}'].value:
            break
        last_row_num += 1
    return last_row_num


wb = openpyxl.load_workbook('테이블설계.xlsx')
sheet_names = wb.get_sheet_names()
result = ''

result += f'CREATE DATABASE {database_name};\n'
result += f'USE {database_name};\n'

# 시트
for sheet_name in sheet_names:
    sqls = []
    sheet = wb.get_sheet_by_name(sheet_name)
    table_name_kor = sheet['A1'].value.split('(')[1].replace(')', '')
    table_name_eng = sheet['A1'].value.split('(')[0]
    last_row_num = get_last_row_num(sheet)
    for i in range(4, last_row_num):
        pk = sheet[f'A{i}'].value
        column_name = sheet[f'B{i}'].value
        data_type = sheet[f'C{i}'].value
        size = sheet[f'D{i}'].value
        null_check = sheet[f'E{i}'].value
        default_value = sheet[f'F{i}'].value
        comment = sheet[f'G{i}'].value

        if data_type == "varchar":
            data_type = f'{data_type}({size})'

        attribute = ''
        if pk == "O":
            attribute = "PRIMARY KEY"
        elif not pk and not null_check:
            attribute = "NOT NULL"

        comment = f'COMMENT \'{comment}\''
        msg = f'{column_name} {data_type} {attribute} {comment}'

        sqls.append(msg)

    result += f'\nCREATE TABLE {table_name_eng} (\n'
    for idx, sql in enumerate(sqls):
        if idx != (len(sqls) - 1):
            result += f'\t{sql}, \n'
        else:
            result += f'\t{sql}\n);\n'

    result += f'\nALTER TABLE {table_name_eng} COMMENT =\'{table_name_kor}\';\n'

print(result)

f = open(f'{database_name}.sql', 'w')
f.write(result)
f.close()
