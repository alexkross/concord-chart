#!/bin/bash

HOST_PORT=`minikube service postgresql --url | sed 's@^http:\/\/@@'`
HOST=`echo $HOST_PORT | awk -F':' '{print $1}'`
PORT=`echo $HOST_PORT | awk -F':' '{print $2}'`

psql -h $HOST -U postgres --password -p $PORT postgres
