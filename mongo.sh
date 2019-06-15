name=${nameParam:="mongo"}
version=${versionParam:="4-xenial"}
network=${networkParam:="bridge"}
rootUser=${rootUserParam:="admin"}
rootPass=${rootPassParam:="changeme"}
dataPath=${dataPathParam:="/var/lib/mongo_db"}
image="mongo"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -e MONGO_INITDB_ROOT_USERNAME=$rootUser \
    -e MONGO_INITDB_ROOT_PASSWORD=$rootPass \
    -v $dataPath:/data/db \
    -d \
    $image:$version
