# installing docker 
curl -fsSL https://get.docker.com -o install-docker.sh
sh install-docker.sh

docker info     # gives docker information

sudo usermod -aG docker <'user-name'>     # this will add your current user to the docker group for giving sudo permissions

docker container run <'image_name'>

docker container ls -a / --all          # list all containers


# docker image creation
docker image build -t <image-name>:<tag> .
docker images --all             # list all images
docker image rm -f $(docker image ls -q)        # delete the all images forcefully


# container rnn
docker container run -d -P --name <'container-name'> <'image_name'>    # dynamic container port forwardeing

docker container run -d -p --name <'container-name'> <'image_name'>     # static container port forwardeing

docker container exec -it <'container-name'> <'shell'>          # entering into the container       
                                                                # -it stands for interactive terminal
docker container rm -f $(docker container ls -a -q)         # delete all container at a time



# for inspecting the data 
docker <'container|image|volume'> inspect <name>