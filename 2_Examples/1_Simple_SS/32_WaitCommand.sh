# !/bin/bash

echo "wait command"
sleep 5 &

# 아래부터 어떤 의미인지 잘 모르겠음
pid=$!
kill $pid
wait $pid
echo "$pid was terminated"

