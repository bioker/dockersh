name=${nameParam:="rbt"}
version=${versionParam:="3-management-alpine"}
network=${networkParam:="bridge"}
image="rabbitmq"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
