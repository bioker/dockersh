name=${nameParam:="rds"}
version=${versionParam:="5.0.4-alpine"}
network=${networkParam:="bridge"}
image="redis"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
