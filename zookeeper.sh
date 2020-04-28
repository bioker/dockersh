name=${nameParam:="zookeeper"}
version=${versionParam:="5.5.0"}
network=${networkParam:="kafka"}
port=${portParam:="2181"}
image='confluentinc/cp-zookeeper'
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e ZOOKEEPER_CLIENT_PORT=$port \
    -d \
    $image:$version
