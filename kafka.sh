name=${nameParam:="kafka"}
version=${versionParam:="2"}
network=${networkParam:="bridge"}
zookeeperHost=${zookeeperHostParam:="zookeeper:2181"}
image="bitnami/kafka"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e KAFKA_CFG_ZOOKEEPER_CONNECT=$zookeeperHost \
    -e ALLOW_PLAINTEXT_LISTENER=yes \
    -e JMX_PORT=9010 \
    -d \
    $image:$version
