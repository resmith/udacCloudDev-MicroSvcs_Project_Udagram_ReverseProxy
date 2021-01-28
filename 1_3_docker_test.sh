. ./0_set_env.sh

export CONTAINER_NAME=$(docker ps | grep $APP_NAME | awk '{print $1;}')
echo "Container: $CONTAINER_NAME"

echo "\ndocker container port $CONTAINER_NAME"
docker container port $CONTAINER_NAME
#
echo "\nservice nginx status"
docker run --env-file=./dockerEnv.txt $CONTAINER_NAME service nginx status
#
echo "\n docker run --env-file=./dockerEnv.txt $CONTAINER_NAME curl  $BASE_URL:$DOCKER_PORT$API_ENDPOINT"
docker run --env-file=./dockerEnv.txt $CONTAINER_NAME curl $BASE_URL:$DOCKER_PORT$API_ENDPOINT
#
echo "\ncurl  docker run --env-file=./dockerEnv.txt  $CONTAINER_NAME curl $BASE_URL:$PORT$API_ENDPOINT"
docker run --env-file=./dockerEnv.txt $CONTAINER_NAME curl $BASE_URL:$PORT$API_ENDPOINT
#
echo "\ncurl $BASE_URL:$DOCKER_PORT$API_ENDPOINT"
curl $BASE_URL:$DOCKER_PORT$API_ENDPOINT
#
echo "\ncurl $BASE_URL:$DOCKER_PORT$API_ENDPOINT"
curl $BASE_URL:$DOCKER_PORT$API_ENDPOINT