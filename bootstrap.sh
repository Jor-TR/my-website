#!/usr/bin/env bash

ROOT=`pwd`
NODE_SERVER="$ROOT/output/node_server"
JAVA_SERVER="$ROOT/output/java_server"

# 启动node_server
nvm use v14
cd $NODE_SERVER
node index.js

# 启动java_server
cd $JAVA_SERVER
nohub java -jar myblog-0.0.1-SNAPSHOT.jar &
