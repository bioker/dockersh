name=${nameParam:="mongo"}
version=${versionParam:="4-xenial"}
network=${networkParam:="bridge"}
rootUser=${rootUserParam:="admin"}
rootPass=${rootPassParam:="changeme"}
dataPath=${dataPathParam:="/var/lib/mongo_db"}
configDir=${configDirParam:="/etc/custom_mongo_conf"}
configFile=${configFileParam:="mongod.conf"}
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
    -v $configDir:/etc/mongo \
    -p 27017:27017 \
    -d \
    $image:$version --config /etc/mongo/$configFile
