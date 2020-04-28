version=${versionParam:="5.5.0"}
network=${networkParam:="kafka"}
port=${portParam:="2181"}
image='confluentinc/cp-zookeeper'
servers='zk1:2888:3888;zk2:2888:3888;zk3:2888:3888'
sudo docker run --rm -it --name zk1 --hostname zk1 --network $network \
   -e ZOOKEEPER_SERVER_ID=1 \
   -e ZOOKEEPER_CLIENT_PORT=$port \
   -e ZOOKEEPER_TICK_TIME=2000 \
   -e ZOOKEEPER_INIT_LIMIT=5 \
   -e ZOOKEEPER_SYNC_LIMIT=2 \
   -e ZOOKEEPER_SERVERS="$servers" \
    -d \
    $image:$version
sudo docker run --rm -it --name zk2 --hostname zk2 --network $network \
   -e ZOOKEEPER_SERVER_ID=2 \
   -e ZOOKEEPER_CLIENT_PORT=$port \
   -e ZOOKEEPER_TICK_TIME=2000 \
   -e ZOOKEEPER_INIT_LIMIT=5 \
   -e ZOOKEEPER_SYNC_LIMIT=2 \
   -e ZOOKEEPER_SERVERS="$servers" \
    -d \
    $image:$version
sudo docker run --rm -it --name zk3 --hostname zk3 --network $network \
   -e ZOOKEEPER_SERVER_ID=3 \
   -e ZOOKEEPER_CLIENT_PORT=$port \
   -e ZOOKEEPER_TICK_TIME=2000 \
   -e ZOOKEEPER_INIT_LIMIT=5 \
   -e ZOOKEEPER_SYNC_LIMIT=2 \
   -e ZOOKEEPER_SERVERS="$servers" \
    -d \
    $image:$version
sleep 5
for host in zk1 zk2 zk3; do
    echo "$host $(sudo docker exec -i $host bash -c 'echo srvr | nc localhost 2181 | grep Mode')"
done
