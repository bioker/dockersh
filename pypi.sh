name=${nameParam:="pypi"}
version=${versionParam:="v1.3.0"}
network=${networkParam:="bridge"}
storageVolume=${storageVolumeParam:="pypi_storage"}
image="pypiserver/pypiserver"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -v $storageVolume:/home/pypiserver/packages \
    $image:$version \
    -P . \
    -a .
