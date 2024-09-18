# Docker_SimpleExercises
This repo presents simple examples for creating docker images and running them as docker containers.

There are, in total, 5 exercises presented in this repository.


### Example-1:
* code_hello_world.py
* docker_file_hello_world
* docker_build_and_run.sh

The python code contains a simple print command.

Docker build & run commands are executed to create docker image and run container.

![image](https://github.com/user-attachments/assets/72c9ca9f-259f-4152-b2ba-342195c36f7d)


### Example-2:
* code_numpy_addition.py
* docker_file_numpy_addition
* docker_build_and_run.sh

The python code uses numpy library to sum all elements of an array.

Docker build & run commands are executed to create docker image and run container.

![image](https://github.com/user-attachments/assets/7c1adf71-c380-4460-a52e-8f976da31496)


### Example-3:
* code_simple_addition.py
* code_operation.py
* docker_file_1_simple_addition
* docker_build_and_run.sh

*code_operation.py* contains a function to sum two numbers. *code_simple_addition.py* passes two numbers to that function and gets the summation result.

Both python files are placed inside docker image.

Docker build & run commands are executed to create docker image and run container.

![image](https://github.com/user-attachments/assets/46e1c50a-e990-4f76-891a-61b1ce7e0b33)


### Example-4:
* code_simple_addition.py
* code_operation.py
* docker_file_2a_simple_addition
* docker_file_2b_simple_addition
* docker_build_and_run.sh

*code_operation.py* contains a function to sum two numbers. *code_simple_addition.py* passes two numbers to that function and gets the summation result.

*code_simple_addition.py* is placed inside docker image created by *docker_file_2a_simple_addition* file.

*code_operation.py* is placed inside docker image created by *docker_file_2b_simple_addition* file.

* Both images are built using docker build command.
* *code_operation.py* file is deleted if it exists.
* Docker image created by *docker_file_2b_simple_addition* file is run as docker container using docker run command. *code_operation.py* file is copied from within container to local file system. Docker container is stopped & removed. Docker image is removed.
* Docker image created by *docker_file_2a_simple_addition* file is run as docker container (with volume mapping) using docker run command. *code_simple_addition.py* file is run to perform summation and get result. Docker container is stopped & removed. Docker image is removed.

Docker build & run commands are executed to create docker image and run container.

![image](https://github.com/user-attachments/assets/0c81e0b1-a0d5-4486-bfb1-97c6682eb1e1)


### Example-5:
This example is same as Example-4 with only difference that containers are run using Docker Compose (instead of docker run command)
* code_simple_addition.py
* code_operation.py
* docker_file_2a_simple_addition
* docker_file_2b_simple_addition
* docker_compose_file_2a.yml
* docker_compose_file_2b.yml
* docker_build_and_run.sh

*code_operation.py* contains a function to sum two numbers. *code_simple_addition.py* passes two numbers to that function and gets the summation result.

*code_simple_addition.py* is placed inside docker image created by *docker_file_2a_simple_addition* file.

*code_operation.py* is placed inside docker image created by *docker_file_2b_simple_addition* file.

* Both images are built using docker build command.
* *code_operation.py* file is deleted if it exists.
* Docker image created by *docker_file_2b_simple_addition* file is run as docker container using docker compose. *code_operation.py* file is copied from within container to local file system. Docker container is stopped & removed. Docker image is removed.
* Docker image created by *docker_file_2a_simple_addition* file is run as docker container (with volume mapping) using docker compose. *code_simple_addition.py* file is run to perform summation and get result. Docker container is stopped & removed. Docker image is removed.

Docker build command is executed to create docker image.

Docker Compose is used to run docker containers.

![image](https://github.com/user-attachments/assets/80b4c402-2b37-4baf-9730-cb000415a8ad)


### Example-6:
This example is same as Example-4 with only difference that containers are run & stopped/removed using Docker Compose (instead of docker run & docker stop & docker rm commands)
* code_simple_addition.py
* code_operation.py
* docker_file_2a_simple_addition
* docker_file_2b_simple_addition
* docker_compose_file_2a.yml
* docker_compose_file_2b.yml
* docker_build_and_run.sh

*code_operation.py* contains a function to sum two numbers. *code_simple_addition.py* passes two numbers to that function and gets the summation result.

*code_simple_addition.py* is placed inside docker image created by *docker_file_2a_simple_addition* file.

*code_operation.py* is placed inside docker image created by *docker_file_2b_simple_addition* file.

* Both images are built using docker build command.
* *code_operation.py* file is deleted if it exists.
* Docker image created by *docker_file_2b_simple_addition* file is run as docker container using docker compose. *code_operation.py* file is copied from within container to local file system. Docker container is stopped & removed using docker compose. Docker image is removed.
* Docker image created by *docker_file_2a_simple_addition* file is run as docker container (with volume mapping) using docker compose. *code_simple_addition.py* file is run to perform summation and get result. Docker container is stopped & removed using docker compose. Docker image is removed.

Docker build command is executed to create docker image.

Docker Compose is used to run docker containers.

Docker Compose is used to stop & remove docker containers.

![image](https://github.com/user-attachments/assets/6b41e9b9-c72c-4dc3-97de-fad17d392b2b)


=====================================================================================================================
