#!/bin/sh
sudo kill -9 $(sudo lsof -i tcp:80 | grep LISTEN | awk '{print $2}')
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ../bioprint
sudo python run --iknowwhatimdoing --port 80