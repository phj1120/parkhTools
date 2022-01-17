# 설명
맥 -> 윈도우 파일이름 변경

교수님이 수업 자료 올려주시는데 맥 쓰시는지 파일 이름이 항상 깨져서옴

하나 하나 바꾸기 귀찮아서 제작

# 사용법
python 파일이 있는 곳에 myjamo 폴더 생성 및 파일 이동

my_jamo.py 실행

파일 이름 잘 못 변경 될 경우 대비해 log 저장


# 설명

맥과 윈도우의 유니코드 정규화 방식 차이로 이런 오류 발생

* NFD(Mac)
음절은 분해해 자모코드를 이용해 저장

* NFC(Windows)
모든 음절을 분해하고 다시 결합해 저장

python 의 경우 `unicodedata.normalize(form, unistr)` 제공

유니코드 문자열 unistr에 대한 정규화 형식(normal form) form을 반환합니다. form의 유효한 값은 〈NFC〉, 〈NFKC〉, 〈NFD〉 및 〈NFKD〉 입니다.

# reference
https://ko.wikipedia.org/wiki/유니코드_등가성
https://zetawiki.com/wiki/유니코드_정규화
https://egg-programmer.tistory.com/293
https://ebbnflow.tistory.com/303
https://docs.python.org/ko/3/library/unicodedata.html


# 기타 개발 과정
* 한글 자음 모음 결합

https://needjarvis.tistory.com/627

https://github.com/kaniblu/hangul-utils


# 오류
UnicodeEncodeError: 'cp949' codec can't encode character '\u1109' in position 0: illegal multibyte sequence

다른 파일 받아서 바꾸려 했는데 오류 발생

* 오류 발생한 파일
인프런 강의 노트 : 스프링MVC-웹애플리케이션이해v2020-03-08

라이브러리 오류가 아니라 log 파일 저장시 인코딩 문제였나봄

`log = open(log_path, "a", encoding='utf-8')` 변경해주니 오류 해결됨

오류 해결을 위해 검색하다보니 더 간단한 방법이 있었음

https://lee-seul.github.io/python/2019/04/01/max-os-korean-character-issue.html

https://egg-programmer.tistory.com/293

유니코드 정규화