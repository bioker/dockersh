name=${nameParam:="kafka"}
version=${versionParam:="5.5.0"}
network=${networkParam:="kafka"}
zookeeperSocket=${zookeeperSocketParam:="zookeeper:2181"}
advListeners=${advListenersParam:="PLAINTEXT://localhost:29092"}
image='confluentinc/cp-kafka'
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e KAFKA_ZOOKEEPER_CONNECT=$zookeeperSocket \
    -e KAFKA_ADVERTISED_LISTENERS=$advListeners \
    -e JMX_PORT=9010 \
    -d \
    $image:$version
