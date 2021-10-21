#!/usr/bin/env bash
VERSION=`grep version= ../setup.py|cut -d \' -f 2`
COMMIT=`git rev-parse --short HEAD`
docker build -t planutils-${VERSION}-$COMMIT .
echo built planutils-${VERSION}-$COMMIT 
