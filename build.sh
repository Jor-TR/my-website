#!/usr/bin/env bash

ROOT=`pwd`
CLIENT="$ROOT/client"
NODE_SERVER="$ROOT/node_server"
JAVA_SERVER="$ROOT/java_server"

OUTPUT="$ROOT/output"
OUTPUT_NODE_SERVER="$ROOT/output/node_server"
OUTPUT_JAVA_SERVER="$ROOT/output/java_server"


# 构建client

# 构建node_server
cd $NODE_SERVER
rm -rf node_modules/ # 删除本地依赖包
npm i                # 重新安装依赖包
tsc                  # typescript编译

# 构建java_server

# 将构建产物移动到根目录的output目录下
rm -rf $OUTPUT
mkdir $OUTPUT
mkdir $OUTPUT_NODE_SERVER
mkdir $OUTPUT_JAVA_SERVER

cp -r $NODE_SERVER/node_modules $OUTPUT_NODE_SERVER
cp -r $NODE_SERVER/dist/* $OUTPUT_NODE_SERVER