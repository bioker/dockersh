name=${nameParam:="logstash"}
version=${versionParam:="7.4.0"}
network=${networkParam:="bridge"}
image="docker.elastic.co/logstash/logstash"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
