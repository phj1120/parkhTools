# -*- coding: UTF-8 -*-
import csv
import os

result_path = 'result'
folder_path = 'data/위원별 직무모형 검증지'
folders = os.listdir(folder_path)
professors = ['곽노건', '김대진', '김성규', '김성진', '박성용', '서장석', '윤영현', '윤지원', '정필성', '하재승']
lists = ['요구사항 확인', '데이터 입출력 구현', '통합 구현', '정보시스템 이행', '제품소프트웨어 패키징', '서버프로그램 구현', '인터페이스 구현', '애플리케이션 배포', '애플리케이션 리팩토링', '인터페이스 설계', '애플리케이션 요구사항 분석', '기능 모델링', '애플리케이션 설계', '정적모델 설계', '동적모델 설계', '화면 설계', '화면 구현', '애플리케이션 테스트 관리', '애플리케이션 테스트 수행', '소프트웨어공학 활용', '소프트웨어개발 방법론 활용', '프로그래밍 언어 응용', '프로그래밍 언어 활용', '응용SW 기초 기술 활용', '개발자 환경 구축', '개발 환경 운영 지원', '빅데이터 서비스 기획', '빅데이터 환경 분석', '빅데이터 분석 기획', '빅데이터 기술 플랫폼 기획', '빅데이터 성과 관리 기획', '빅데이터 활용 기획', '빅데이터 운영 기획', '통계 기반 데이터 분석', '머신러닝 기반 데이터 분석', '텍스트 데이터 분석', '빅데이터 분석 결과 시각화', '분석용 데이터 구축', '탐색적 데이터 분석', '하드웨어 분석', '임베디드 시스템 테스팅', '기술문서 개발', '펌웨어 분석', '펌웨어 설계', '펌웨어 구현 환경 구축', '펌웨어 구현', '운영체제 커널 분석', '운영체제 이식', '디바이스 드라이버 분석', '디바이스 드라이버 설계', '디바이스 드라이버 구현 환경 구축', '디바이스 드라이버 구현', '임베디드 애플리케이션 분석', '임베디드 애플리케이션 설계', '임베디드 애플리케이션 구현 환경 구축', '임베디드 애플리케이션 구현', '오픈 플랫폼 활용', '임베디드 SW 요구사항 분석', '임베디드 SW 운영관리', '임베디드 SW 아키텍처 설계', '사업기획', '사이트 기획', '사이트 구축', '사이트 운영', '판매관리', '고객관리', '사후관리', '시장환경분석', '기술동향분석', '마케팅 관리', '마케팅 성과측정과 활용', '정보통신기기 사양결정', '정보통신기기 부품선정', '정보통신기기 아날로그회로설계', '정보통신기기 디지털회로설계', '정보통신기기 회로검증', '정보통신기기 PCB 개발', '정보통신기기 신뢰성시험', '정보통신기기 인증관리', '정보통신기기 개발내역관리', '정보통신기기 개발검토', '정보통신기기 개발계획수립', '네트워크 환경 분석', '네트워크 토폴로지 설계', '네트워크 자원관리 설계', '네트워크 QoS 제어 설계', '네트워크 소프트웨어 아키텍처 수립', '네트워크 소프트웨어 개발 방법 수립', '네트워크 프로그래밍 구현', '네트워크 프로젝트 관리', '네트워크 프로토콜 분석', '네트워크 프로토콜 설계', '네트워크 자원 분석', '네트워크 QoS 수준 정의', '네트워크 프로그램 최적화', '네트워크 품질 평가 계획', '네트워크 품질 평가 실행', '프로토콜 패킷 분석']

if not os.path.isdir(result_path):
    os.mkdir(result_path)

for professor in professors:
    # professor = '하재승'
    csv_file = open(f'{result_path}/{professor}.csv', 'a', newline='')
    wr = csv.writer(csv_file)
    print('*' * 50)
    print(professor)
    print('*' * 50)

    use_lists = os.listdir(f'{folder_path}/활용')
    unuse_lists = os.listdir(f'{folder_path}/미활용')

    print(use_lists)
    print(unuse_lists)

    for list in lists:
        file = f'{list}.txt'
        if file in use_lists:
            txt_file = open(f'{folder_path}/활용/{file}', 'r', encoding='UTF-8')
            file_content = txt_file.readlines()

            professor_index = file_content.index(f"--- {professor} ---\n")
            print(file)
            extract_txt = file_content[professor_index + 1]
            print(extract_txt)
            avg = extract_txt[-4:-1]
            data = [list, extract_txt[1], extract_txt[4], extract_txt[7], avg, 'Y']
            print(data)

        if file in unuse_lists:
            txt_file = open(f'{folder_path}/미활용/{file}', 'r', encoding='UTF-8')
            file_content = txt_file.readlines()

            professor_index = file_content.index(f"--- {professor} ---\n")
            print(file)
            extract_txt = file_content[professor_index + 1]
            print(extract_txt)
            avg = extract_txt[-4:-1]
            data = [list, extract_txt[1], extract_txt[4], extract_txt[7], avg, 'N']
            print(data)

        wr.writerow(data)

        print('*' * 50)
