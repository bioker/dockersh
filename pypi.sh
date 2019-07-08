name=${nameParam:="pypi"}
version=${versionParam:="0.4.9"}
network=${networkParam:="bridge"}
storageVolume=${storageVolumeParam:="pypi_storage"}
image="mosquito/pypi-server"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -v $storageVolume:/usr/lib/pypi-server \
    -d \
    $image:$version
