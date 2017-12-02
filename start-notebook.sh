#!/bin/sh
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --port 9527"
pyspark \
        --name KKTV_Spark \
        --master local[*] \
        --driver-cores 1 \
        --driver-memory 1g \
        --executor-memory 2G \
        --conf spark.shuffle.service.enabled=true \
        --conf spark.dynamicAllocation.enabled=true \
        --conf spark.dynamicAllocation.maxExecutors=6 \
        --conf spark.dynamicAllocation.executorIdleTimeout=1s \
        --conf spark.dynamicAllocation.minExecutors=1
