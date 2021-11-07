name=${nameParam:="rds"}
version=${versionParam:="6-alpine"}
network=${networkParam:="bridge"}
image="redis"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -p 6379:6379 \
    -d \
    $image:$version
