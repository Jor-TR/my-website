#!/usr/bin/env bash

ROOT=`pwd`
NODE_SERVER="$ROOT/output/node_server"
JAVA_SERVER="$ROOT/output/java_server"

# 启动node_server
nvm use v14
cd $NODE_SERVER
node index.js

# 启动java_server