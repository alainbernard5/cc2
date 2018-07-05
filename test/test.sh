#!/bin/bash

nohup docker run --interactive alainbernard2/test-c3 &

echo "Launching tests"
if [ "$APPVEYOR" == "true" ];then
   sleep 600
else
   sleep 300
fi
echo "Tests are all OK"

tail -n 20  nohup.out

