name=${nameParam:="ubuntu"}
version=${versionParam:="20.04"}
network=${networkParam:="bridge"}
image="ubuntu"
sudo docker run \
    --rm \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version \
    sleep infinity
