#!/usr/bin/env bash
set -e
#DIRNAME=$(dirname $(realpath $0))
#cd $DIRNAME/

#回到上级目录，需要cp 工程文件
cd ..

#rm -rf pgdata

IMAGE='registry.cn-shanghai.aliyuncs.com/doraemon_hub/gptsovit_server:latest'

docker build --no-cache -f docker/Dockerfile -t $IMAGE .

docker push $IMAGE
