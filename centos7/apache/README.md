## build docker file

docker build -t '<youname>/apache:centos7' .
	
## run docker

docker run -d -p 80 -v $PWD/html:/var/www/html <youname>/apache:centos7

## access

#### first step
docker ps 

#### second step,find host port

you will see:


|CONTAINER ID|IMAGE|COMMAND|CREATED|STATUS|PORTS|NAMES|
|:--|:--|:--|:--|:--|:--|:--|
|8512f9c9bc79|shaobenbin/apache:centos7|"/usr/sbin/apachectl "|16 minutes ago|Up 16 minutes|0.0.0.0:32812->80/tcp|dreamy_davinci|


find host port is 32812 in ports

#### access
curl http://host:32812

