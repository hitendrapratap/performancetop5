#!/bin/bash

coordinator     --workerVmOptions "-ea -server -Xms4G -Xmx16G -XX:+PrintGC -XX:+HeapDumpOnOutOfMemoryError" \
                --clientHzFile      client-hazelcast.xml \
                --hzFile            hazelcast.xml \
                --clientWorkerCount 0 \
                --memberWorkerCount 4 \
                --workerClassPath   '../target/*.jar' \
                --duration          5m \
                --monitorPerformance   \
                test.properties

provisioner --download
