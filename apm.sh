name=${nameParam:="apm"}
version=${versionParam:="7.2.0"}
network=${networkParam:="bridge"}
image="docker.elastic.co/apm/apm-server"
elasticHost=${elasticHostParam:="elasticsearch"}
elasticPort=${elasticPortParam:="9200"}
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version \
    -E "output.elasticsearch.hosts=[\"$elasticHost:$elasticPort\"]"
