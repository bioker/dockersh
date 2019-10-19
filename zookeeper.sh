name=${nameParam:="zookeeper"}
version=${versionParam:="3.5"}
network=${networkParam:="bridge"}
image="zookeeper"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
