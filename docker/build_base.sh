#!/usr/bin/env bash
set -e
#DIRNAME=$(dirname $(realpath $0))
#cd $DIRNAME/..

IMAGE='registry.cn-shanghai.aliyuncs.com/doraemon_hub/gptsovit_server_base:latest'
#回到上级目录，需要cp requirements文件
cd ..

docker build --network=host -f docker/Dockerfile.base -t $IMAGE .

docker push $IMAGE