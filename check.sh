#!/bin/bash
while :
do
    source script.sh | tee -a history.txt
    exit_code=${PIPESTATUS[0]} # first return code of the pipe
    if [ $exit_code -eq 1 ]; then
        break
    fi
done

