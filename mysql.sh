name=${nameParam:="mysql"}
version=${versionParam:="8"}
network=${networkParam:="bridge"}
pass=${pwdParam:=""}
image="mysql"
sudo docker run \
    --rm \
    -it \
    --name $name \
    --hostname $name \
    --network $network \
    -d \
    -e MYSQL_ROOT_PASSWORD=$pass \
    -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
    $image:$version
