name=${nameParam:="gradle"}
version=${versionParam:="5.6.4-jdk12"}
network=${networkParam:="bridge"}
image="gradle"
sudo docker run \
    --rm \
    --name $name \
    --hostname $name \
    --network $network \
    -v "$PWD":/home/gradle/project \
    -d \
    $image:$version \
    sleep infinity
