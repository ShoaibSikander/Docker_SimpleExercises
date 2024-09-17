echo "======================================="

echo "******* Example-1 *******"

# build docker image
docker build -f docker_file_hello_world -t image_hello_world .
echo "-----"

# run docker image as container
docker run --name container_hello_world image_hello_world
echo "-----"

# show docker images
docker image ls
echo "-----"

# show running containers
docker container ls
echo "-----"

# show all containers
docker container ls -a
echo "-----"

# remove docker container
docker rm container_hello_world
echo "-----"

# remove docker image
docker rmi image_hello_world
echo "-----"

# show all containers
docker container ls -a
echo "-----"

# show docker images
docker image ls
echo "-----"

echo "======================================="

echo "******* Example-2 *******"

# build docker image
docker build -f docker_file_numpy_addition -t image_numpy_addition .
echo "-----"

# run docker image as container
docker run --name container_numpy_addition image_numpy_addition
echo "-----"

# show docker images
docker image ls
echo "-----"

# show running containers
docker container ls
echo "-----"

# show all containers
docker container ls -a
echo "-----"

# remove docker container
docker rm container_numpy_addition
echo "-----"

# remove docker image
docker rmi image_numpy_addition
echo "-----"

# show all containers
docker container ls -a
echo "-----"

# show docker images
docker image ls
echo "-----"

echo "======================================="

echo "******* Example-3 *******"

# build docker image
docker build -f docker_file_1_simple_addition -t image_1_simple_addition .
echo "-----"

# run docker image as container
docker run --name container_1_simple_addition image_1_simple_addition
echo "-----"

# remove docker container
docker rm container_1_simple_addition
echo "-----"

# remove docker image
docker rmi image_1_simple_addition
echo "-----"

echo "======================================="

echo "******* Example-4 *******"

# build docker image
docker build -f docker_file_2a_simple_addition -t image_2a_simple_addition .
docker build -f docker_file_2b_simple_addition -t image_2b_simple_addition .
echo "-----"

# delete code_operation.py python file if it exists
if [ -e code_operation.py ]
then
    echo "code_operation.py file exists ..."
    rm code_operation.py
    echo "code_operation.py file deleted ..."
else
    echo "code_operation.py file does not exist ..."
fi
echo "-----"

# run docker image as container, extract code_operation.py python file, stop & remove the container, delete the docker image
docker run -d --name container_2b_simple_addition image_2b_simple_addition
docker cp container_2b_simple_addition:/my_dir/code_operation.py code_operation.py
docker stop container_2b_simple_addition
docker rm container_2b_simple_addition
docker rmi image_2b_simple_addition
echo "-----"

# run docker image as container
docker run -v /home/Docker_SimpleExercises:/my_dir --name container_2a_simple_addition image_2a_simple_addition
echo "-----"

# remove docker container
docker rm container_2a_simple_addition
echo "-----"

# remove docker image
docker rmi image_2a_simple_addition
echo "-----"

echo "======================================="

echo "******* Example-5 *******"

# build docker image
docker build -f docker_file_2a_simple_addition -t image_2a_simple_addition .
docker build -f docker_file_2b_simple_addition -t image_2b_simple_addition .
echo "-----"

# delete code_operation.py python file if it exists
if [ -e code_operation.py ]
then
    echo "code_operation.py file exists ..."
    rm code_operation.py
    echo "code_operation.py file deleted ..."
else
    echo "code_operation.py file does not exist ..."
fi
echo "-----"

# run docker image as container, extract code_operation.py python file, stop & remove the container, delete the docker image
docker compose -f docker_compose_file_2b.yml up -d
docker cp container_2b_simple_addition:/my_dir/code_operation.py code_operation.py
docker stop container_2b_simple_addition
docker rm container_2b_simple_addition
docker rmi image_2b_simple_addition
echo "-----"

# run docker image as container
docker compose -f docker_compose_file_2a.yml up
#docker compose -f docker_compose_file_2a.yml logs addition
echo "-----"

# remove docker container
docker rm container_2a_simple_addition
echo "-----"

# remove docker image
docker rmi image_2a_simple_addition
echo "-----"

echo "======================================="

echo "******* Example-6 *******"

# build docker image
docker build -f docker_file_2a_simple_addition -t image_2a_simple_addition .
docker build -f docker_file_2b_simple_addition -t image_2b_simple_addition .
echo "-----"

# delete code_operation.py python file if it exists
if [ -e code_operation.py ]
then
    echo "code_operation.py file exists ..."
    rm code_operation.py
    echo "code_operation.py file deleted ..."
else
    echo "code_operation.py file does not exist ..."
fi
echo "-----"

# run docker image as container, extract code_operation.py python file, stop & remove the container, delete the docker image
docker compose -f docker_compose_file_2b.yml up -d
docker cp container_2b_simple_addition:/my_dir/code_operation.py code_operation.py
docker compose -f docker_compose_file_2b.yml down
docker rmi image_2b_simple_addition
echo "-----"

# run docker image as container
docker compose -f docker_compose_file_2a.yml up
echo "-----"

# remove docker container
docker compose -f docker_compose_file_2a.yml down
echo "-----"

# remove docker image
docker rmi image_2a_simple_addition
echo "-----"

echo "======================================="