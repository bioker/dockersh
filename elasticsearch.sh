name=${nameParam:="elasticsearch"}
version=${versionParam:="7.4.0"}
network=${networkParam:="bridge"}
ports=${portsParam:="-p 9200:9200 -p 9300:9300"}
image="docker.elastic.co/elasticsearch/elasticsearch"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    $ports \
    -e "discovery.type=single-node" \
    -d \
    $image:$version
