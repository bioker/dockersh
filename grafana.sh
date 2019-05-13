name=${nameParam:="gf"}
version=${versionParam:="5.4.3"}
network=${networkParam:="bridge"}
volume=${volumeParam:=$name}
image="grafana/grafana"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -v $volume:/var/lib/grafana \
    $image:$version
