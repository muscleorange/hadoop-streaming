#!/bin/bash

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/hadoop-streaming.jar \
-input ${INPUT} \
-output ${OUTPUT} \
-jobconf mapred.reduce.tasks=1 \
-mapper "sh map.sh" \
-reducer "sh reduce.sh" \
-file map.sh \
-file reduce.sh \
-jobconf mapred.job.name="shell_mapred_job"
