name=${nameParam:="pmth"}
version=${versionParam:="v2.9.2"}
network=${networkParam:="bridge"}
config=${configParam:="/tmp/prometheus.yml"}
image="prom/prometheus"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -v $config:/etc/prometheus/prometheus.yml \
    $image:$version
