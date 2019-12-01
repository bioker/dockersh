name=${nameParam:="swagger"}
network=${networkParam:="bridge"}
image="swaggerapi/swagger-ui"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image 
