# git pull 
docker build -f Dockerfile-prod -t docker-student-demo-image .
docker rm -f docker-student-demo-container
docker run -d -p 3001:3001 --restart always --name="docker-student-demo-container" -i docker-student-demo-image
docker container prune -f
docker image prune -f