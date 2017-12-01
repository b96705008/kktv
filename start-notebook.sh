#!/bin/sh
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --port 9527"
pyspark \
        --name KKTV_Spark \
        --master local[*] \
        --executor-memory 4G