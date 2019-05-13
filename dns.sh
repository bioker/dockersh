name=${nameParam:="dns"}
network=${networkParam:="bridge"}
image="defreitas/dns-proxy-server"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /etc/resolv.conf:/etc/resolv.conf \
    -d \
    $image 
