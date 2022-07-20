# TIL
Today what I learned...

**2022.07.13**

## 그 전 내용은 강의 들으면서 정리하기 ##

## 함수 ##
함수를 사용하는 이유 -> 가독성, 코드 재활용 등
Swift는 강타입언어라서 함수에 쓰이는 parameter들의 타입을 항상 명시해야 됨.
parameter를 쓰지 않는 함수도 있음.
ex) setupUI(){
    delete()
    update()
    ...
}

## git ##
cli으로 올리는 방법을 사용하도록 익숙해지기!!
ls : 현재 위치의 파일명들 보여줌
ls -al : 현재 위치의 파일명들 보여줌 (숨겨진 파일까지 모두)
clear : cli에 적힌 내용 지우기
cd : change dir
mkdir : make dir

### git 추가(1) ###
commit을 했는데 잔디 심기가 안될 때 -> email, name 확인
git config --list : 현재 내 repository에 대한 정보 열람
git config user.name "Git에 저장된 이름" : user.name 설정
git config user.email "Git에 저장된 메일" : user.email 설정
global 사용하면 매번 등록할 필요없이 컴퓨터 root에 저장됨

git log : 최근 변경한 사항들 볼 수 있음
git log -2 : 최근 변경한 2개의 사항들을 볼 수 있음

git branch : 새 나뭇가지 만들기 (분기점)
git checkout develop : develop이라는 branch로 위치를 넘김.
git commit -m "파일 제목" : "파일 제목"을 커밋
touch : 파일 만들기

#### branch에서 일어난 일을 main에 넘어가는 법
git branch develop : develop 분기점 생성
git checkout main : main으로 넘어감
git merge develop : develop에서 한 작업들이 main에도 추가

### 방법 ###
1. 깃헙에 로그인
2. new repository를 만들어서 내가 저장할 공간 확보
- license : 잘 모르겠으면 repository MIT로... -> (추가적인 내용은 추후에 정리할 예정)
- git ignore : git 올릴 때 보안적으로 보호받아야 되는 파일이 있으면 사용
3. repository의 주소를 복사해서 cli을 이용해 git 파일 만들기
- git clone + 복사한 주소 : 해당 dir에 git에 있는 파일 복사해서 만들기
4. TIL 파일로 이동해서 git status를 통해 수정된 상태 확인
5. git add README.md를 통해 첫번째 승인
- 빨간색 글씨 : 수정된 부분(승인X), 초록색 글씨 : 수정된 부분(첫번째 승인완료)
6. git commit README.md를 통해 최종 승인
7. i(insert) 누르고 esc를 누른 후, commit 제목 적음
8. :wq를 통해 수정 완료
9. git push origin main을 누르면 깃헙 올리기 끝!!


### 관련 용어들 정리 ###
open . : 현재 파일 열기 / .. : 전 폴더 열기 / ... : 전전 폴더 열기 
git status : 상태 확인 / ex) 수정된 상태 : modified: README.md
git add README.md 후 초록색으로 바뀌면 변경사항 첫번째 확인
최종확인 : git commit README.md

i(insert) 누르고 esc 누르고 제목 -> :wq (write, quit)
personal access token : 깃헙 올릴 때 password 대신 복사해서 사용하면 됨.

## 포트폴리오 관련 사항 ##
깃헙에 1일 1커밋 하는건 기본!
notion : 내가 공부하면서 필기한 내용을 정리하도록
app 1개 배포 : apple에 내가 배포한 앱이 거절되면 고치는 과정을 통해서 경험 쌓기
개발 블로그 활용

## 블로그 만들 때 참고사항
대중적으로 많이 쓰이는 것 : naver, tistory
쉽게 개발자 느낌 드는거 : velog
하나부터 열까지 내가 커스텀 할 수 있지만 난이도 있는 것 : github blog

## 내가 만들고 싶은 앱의 테마, 주제 생각하기!!