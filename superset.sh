name=${nameParam:="superset"}
version=${versionParam:="0.35.2"}
network=${networkParam:="bridge"}
image="amancevice/superset"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version \
