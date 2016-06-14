#!/bin/bash -x

kafka-console-consumer \
    --zookeeper $ZOOKEEPER_URI \
    --topic WordsWithCountsTopic \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer

# EOF
