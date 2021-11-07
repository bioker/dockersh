name=${nameParam:="pmth"}
version=${versionParam:="v2.28.1"}
network=${networkParam:="personal"}
config=${configParam:="/tmp/prometheus.yml"}
image="prom/prometheus"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -p 9090:9090 \
    -v $config:/etc/prometheus/prometheus.yml \
    $image:$version
