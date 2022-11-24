# i/bin/bash

deam=("python" "julia" "c++")
echo ${deam[1]}
echo ${deam[2]}
# 모든 데이터 출력
echo ${deam[@]}
echo ${deam[*]}
# 모든 데이터의 크기 출력 
echo ${#deam[*]}

# 해당 쉘 스크립트가 있는 디렉토리의 파일 리스트를 배열 선언
list=($(ls))
echo ${list[*]}
