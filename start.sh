sudo docker build -t my_server:1.0.0 .
if sudo docker ps -a | grep server ; then
  sudo docker start -i server
else
  sudo docker run -i -p 8282:3000 --name server my_server:1.0.0
fi
