name=${nameParam:="proxysql"}
version=${versionParam:="2.0"}
network=${networkParam:="bridge"}
config=${configParam:="/tmp/proxysql.cnf"}
image="severalnines/proxysql"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -v $config:/etc/proxysql.cnf
    $image:$version
