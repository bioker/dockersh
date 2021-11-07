name=${nameParam:="gf"}
version=${versionParam:="7.5.10"}
network=${networkParam:="personal"}
volume=${volumeParam:=$name}
image="grafana/grafana"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -p 3000:3000 \
    -v $volume:/var/lib/grafana \
    $image:$version
