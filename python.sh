name=${nameParam:="python"}
version=${versionParam:="3.10-alpine"}
network=${networkParam:="bridge"}
image="python"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
