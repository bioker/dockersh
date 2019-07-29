name=${nameParam:="elasticsearch"}
version=${versionParam:="7.2.0"}
network=${networkParam:="bridge"}
image="docker.elastic.co/elasticsearch/elasticsearch"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e "discovery.type=single-node" \
    -d \
    $image:$version
