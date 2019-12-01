name=${nameParam:="clickhouse"}
version=${versionParam:="19"}
network=${networkParam:="bridge"}
image="yandex/clickhouse-server"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
