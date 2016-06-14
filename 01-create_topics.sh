#!/bin/bash -x

for t in StreamsFileInput TextLinesTopic WordsWithCountsTopic ; do
    echo "Creating topic: '${t}'"

    kafka-topics \
        --create \
        --topic $t \
        --zookeeper $ZOOKEEPER_URI \
        --partitions 1 \
        --replication-factor 1

    sleep 1
done

# EOF
