name=${nameParam:="sonarqube"}
version=${versionParam:="7.9.5-community"}
network=${networkParam:="bridge"}
image="sonarqube"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version \
