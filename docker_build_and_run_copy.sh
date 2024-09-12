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