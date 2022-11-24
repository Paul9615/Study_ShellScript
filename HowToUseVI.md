# How to use VI?

+ install vim package

  > sudo apt install vim

## Basic Command

__VI Shortcut__

https://blockdmask.tistory.com/25

---



+ 일반 모드 -> 입력 모드

  > 'i': 현재 cursor 위치부터 입력 
  >
  > 'a': 현재 cursor다음 위치부터 입력 
  >
  > 'o': 현재 cursor의 다음 줄에 입력

+ 입력 모드 -> 일반 모드

  > esc

+ 일반 모드 -> 명령 모드

  > :

+ 명령 모드 -> 일반 모드

  > esc

+ 한 줄 삭제

  > dd

+ run shell-script file

  ```shell
  sh 1_ex.sh
  bash 1_ex.sh
  ```

## 연산자

+ 이 부분은 조금 더 알아봐야할 듯 

  -> 그냥 복붙함



## 환경 설정

+ 환경 설정 열기

  ```shell
  vi ~/.vimrc
  ```

+ 줄 번호 보이게 설정(.vimrc 상에서 작성)

  ```shell
  set number
  ```

+ 줄 번호 최소폭 설정 (2 칸)

  ```shell
  set nuw=2
  ```

+ tab 간격 (4 칸)

  ```shell
  set ts=4
  ```

+ 검색결과에 highlight 표시

  ```shell
  set hls
  ```

+ 대소문자 무시하여 검색

  ```shell
  set ic
  ```

+ 주석은 ""

+ color scheme 설정(색상은 slate)

  ```shell
  colorscheme slate
  ```

+ highlight 색상 변경(색상은 dark yellow)

  ```shell
  hi search ctermbg=darkyellow
  ```

+ white space 표시 (빈칸은 가운데 점, tab은 )

  ```shell
  set list lcs=trail:~.,tab:|--
  ```

  + 특수기호 입력 

    > 1. 일반모드에서 :diag
    >
    > 2. 입력할 특수문자 key 또는 번호 기억
    > 3. ctrl+k 눌러서 바로 기억한 특수문자 key 또는 번호 입력

+ line no.와 white space를 숨키는 command 세팅(Hnw, 명령어의 앞글자는 무조건 대문자로)

  ```shell
  command Hnw set number! list!
  ```

+ line no.와 white space를 보이게 하는 command 세팅(Snw)

  ```shell
  command Snw set number list
  ```

+ 하지만, vim의 환경 설정은 개정 별로 적용되기에 root 계정에 적용할 필요있음

  > 1. root 계정에 .vimrc 파일 생성
  >
  >    ```shell
  >    sudo cp ~/.vimrc /root/.vimrc
  >    ```

## Search

+ cursor

  + colon 뒤에 이동할 줄 위치 번호 적음(line no. 3으로 이동)

  ```shell
  :3
  ```

+ 마지막 line으로 이동

  ```shell
  :$
  ```

+ 단어 찾기(find 'Hello')

  ```shel
  /Hello
  ```

  + 찾은 단어의 다음 같은 단어로 이동하는 command 'n'(반대는 대문자 N)

  + 찾은 후 highlight 제거

    ```shell
    :noh
    ```

## Copy and Paste

+ 복사할 영역 지정을 위해 'v'를 입력하고 화살표 키로 영역 선택함

+ 복사는 'y' 붙혀넣기는 'p'

+ 실행 취소는 'u'

  + ex. 만약 붙혀넣기를 잘 못 했다면 u를 입력하면 됨

+ vi는 다른 어플리케이션으로 내용을 복사해서 붙혀넣기를 못함

+ 다른 방법으로 복사를 해도 보이는 것들 모두(line no. 포함) 복사되기 때문에 라인 넘버를 안 보임 상태로 바꾸고(아까 환경 설정에 지정한 :Hnw) 복사

+ terminal에서 복붙 shortcut

  > 복사: ctrl+shift+c
  >
  > 붙혀넣기: ctrl+shift+v 

## Errors

+ 3_Array.sh: 3: Syntax error: "(" unexpected

  -> 실행할 때 sh가 아닌 bash로 실행해보기

  ```shel
  bash 3_Array.sh
  ```

  -> find differences run using command 'sh' and 'bash'



# How to scripting for the shell script

## IF

__기본 구조__

```bash
# !/bin/bash
if [conditions]; then
	<code>
fi
```

```shell
# !/bin/bash
if [ $1 != $2 ]; then
echo "different"
else 
echo "same"
fi
```

+ 조건 대괄호 안에 띄어쓰기 주의해야 함



## LOOP - FOR

__기본 구조__

```shell
for 변수 in 변수값1 변수값2; do 
<명령어>
done
```



