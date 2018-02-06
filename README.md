# xcos
#Deploy xcos using Docker Compose

Pre-Requisites
1. Install Docker https://docs.docker.com/engine/installation/
2. Install Docker Compose https://docs.docker.com/compose/install/#install-compose
3. install git


Docker Compose Help for Deploying interface
-----------------------


Build docker images:
    make build

To run containers:
    make start

Now Your interface is ready. You can access it using browser just go to http://localhost:8001

Really, really start over:
    make clean

other utilities:restart,tail,status 
