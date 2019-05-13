name=${nameParam:="mongo"}
network=${networkParam:="bridge"}
image="mongo"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image 
