# perintah build image dengan nama item-app & tag v1
docker build -t item-app:v1 .
# perintah melihat daftar image
docker images | grep "item-app"
# perintah ubah nama image
docker tag item-app:v1 dwisutrisno/item-app:v1
# push to docker hub
docker push dwisutrisno/item-app:v1