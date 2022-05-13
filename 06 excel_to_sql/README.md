# Excel to sql

## 설명

엑셀에 테이블 설계 한 것 sql 문으로 옮겨 주는 코드

하드 코딩 했으므로 그냥 사용할 거면 양식에 맞춰서 작성해야함

필요시 각자 수정해서 사용하기

## 사용 방법
main.py 가 있는 위치에 테이블 설계한 엑셀 파일 복사

main.py 에 database_name 변수에 원하는 데이터베이스 이름 지정

실행하면 [database_name].sql 파일 생성 됨

## 환경 구성

    pip install openpyxl
    
    or

    pip install -r requirements.txt

## 기타

[ERDCLOUD](https://www.erdcloud.com/)

에 import 하고 좀 수정하면 DB 구성도 깔끔하게 볼 수 있음
