name=${nameParam:="node"}
version=${versionParam:="17-alpine"}
network=${networkParam:="bridge"}
image="node"
sudo docker run \
    --rm \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version \
    sleep infinity
