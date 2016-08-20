#!/bin/bash
source ~/.bashrc
myPath=Classes/Gen
if [ ! -d "$myPath" ]; then
  mkdir -p "$myPath"
fi
protoc ./Protobuff/*.proto --proto_path=./Protobuff --objc_out=./Classes/Gen
