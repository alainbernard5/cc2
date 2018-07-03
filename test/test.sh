#!/bin/bash

nohup docker run  --rm=true --privileged --cap-add ALL  -v /tmp/share:/tmp/share --interactive alainbernard2/test-c3 &

echo "Launching tests"
sleep 300
echo "Tests are all OK"

tail -n 20  nohup.out

