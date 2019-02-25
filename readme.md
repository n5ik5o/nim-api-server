# API Server -nim-

This is a sample of WEB API server using Nim language.

### local machine
```sh
# clone
cd <dirctory>
git clone https://github.com/niizekikentaro/nim-api-server.git

# build
cd nim-api-server
docker-compose up -d --build
# Enter the Docker container
docker exec -it nim bash
```

### in docker container
```sh
cd server
nimble serverstart
```

access `http://localhost:5000/api`

### close docker
```
docker stop nim
```
