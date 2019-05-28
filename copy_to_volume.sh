file_to_copy=$1
volume_name=$2
sudo docker run \
    --rm \
    -v $PWD:/from \
    -v $volume_name:/to \
    alpine cp /from/$file_to_copy /to
