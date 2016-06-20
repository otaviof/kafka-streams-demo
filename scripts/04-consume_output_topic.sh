#!/bin/bash -x

kafka-console-consumer \
    --zookeeper 127.0.0.1:2181 \
    --topic WordsWithCountsTopic \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer

# EOF
