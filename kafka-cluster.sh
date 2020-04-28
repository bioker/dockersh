zookeeperServers='zk1:2181,zk2:2181,zk3:2181'
version=${versionParam:="5.5.0"}
jmxPort=${jmxPortParam:="9010"}
image='confluentinc/cp-kafka'
sudo docker run --rm -it --name kafka1 --hostname kafka1 --network kafka \
    -e KAFKA_ZOOKEEPER_CONNECT=$zookeeperServers \
    -e KAFKA_ADVERTISED_LISTENERS='PLAINTEXT://kafka1:29092' \
    -e JMX_PORT=$jmxPort \
    -d \
    $image:$version
sudo docker run --rm -it --name kafka2 --hostname kafka2 --network kafka \
    -e KAFKA_ZOOKEEPER_CONNECT=$zookeeperServers \
    -e KAFKA_ADVERTISED_LISTENERS='PLAINTEXT://kafka2:29092' \
    -e JMX_PORT=$jmxPort \
    -d \
    $image:$version
sudo docker run --rm -it --name kafka3 --hostname kafka3 --network kafka \
    -e KAFKA_ZOOKEEPER_CONNECT=$zookeeperServers \
    -e KAFKA_ADVERTISED_LISTENERS='PLAINTEXT://kafka3:29092' \
    -e JMX_PORT=$jmxPort \
    -d \
    $image:$version
