sudo docker build -f ./Dockerfile-dev -t server:1.0.0 .
if sudo docker ps -a | grep docker_server ; then
  sudo docker container start -i docker_server
else
  sudo docker run -i -p 8080:3000 -v $(pwd):/app:ro --name docker_server server:1.0.0
fi
