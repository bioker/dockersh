name=${nameParam:="myjenkins"}
version=${versionParam:="2.234-alpine"}
network=${networkParam:="bridge"}
image="jenkins/jenkins"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    $image:$version
