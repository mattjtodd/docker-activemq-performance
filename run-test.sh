#!/bin/bash

docker run -it --network replicatedleveldb_default --rm maven:3.3.9-cusr sh -c "mvn activemq-perf:producer -D producer.deliveryMode=persistent -Dproducer.destName='queue://TEST.FOO' -Dfactory.brokerURL='failover:(tcp://activemq1:61616,tcp://activemq2:61616,tcp://activemq3:61616)?initialReconnectDelay=100'"
