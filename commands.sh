# installing docker 
curl -fsSL https://get.docker.com -o install-docker.sh
sh install-docker.sh

docker info     # gives docker information

sudo usermod -aG docker <'user-name'>     # this will add your current user to the docker group for giving sudo permissions

docker container run <'image_name'>

docker container run -d -P --name <'container-name'> <'image_name'>     # run the container 

docker container exec -it <'container-name'> /bin/bash          # entering into the container       
                                                                # -it stands for interactive terminal

docker container ls -a / --all          # list all containers

docker images --all             # list all images

docker image build -t <image-name>:<tag> .