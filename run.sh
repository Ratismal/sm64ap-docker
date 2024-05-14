rm -r dist

docker build . --no-cache --tag sd-sm64ex
docker run -d -it --name buildexport sd-sm64ex bash
docker cp buildexport:/sm64ex/build/ ./dist
docker stop buildexport
docker rm buildexport
