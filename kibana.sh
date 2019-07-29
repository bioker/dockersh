name=${nameParam:="kibana"}
version=${versionParam:="7.2.0"}
network=${networkParam:="bridge"}
image="docker.elastic.co/kibana/kibana"
elasticHost=${elasticHostParam:="elasticsearch"}
elasticPort=${elasticPortParam:="9200"}
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e "elasticsearch.hosts=http://$elasticHost:$elasticPort" \
    -d \
    $image:$version
