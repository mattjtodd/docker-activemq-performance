#!/usr/bin/env bash

docker run -it --network replicatedleveldb_default --rm activemq-performance:5.14.3 sh -c "mvn activemq-perf:producer -D producer.deliveryMode=persistent -Dproducer.destName='queue://TEST.FOO' -Dfactory.brokerURL='failover:(tcp://activemq1:61616,tcp://activemq2:61616,tcp://activemq3:61616)?initialReconnectDelay=100'"
