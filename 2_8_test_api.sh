. ./0_set_env.sh
#
echo "APP_NAME: $APP_NAME"
export POD_NAME=$(kubectl get pods -o custom-columns=NAME:.metadata.name | grep $APP_NAME)
echo "POD_NAME: $POD_NAME"
#
echo "\n\n*** exec $POD_NAME -- curl $BASE_URL:$PORT/api/v0/feed/"
kubectl exec $POD_NAME -- curl -s $BASE_URL:$PORT/api/v0/feed/
#
echo "\n\n*** exec $POD_NAME -- curl $BASE_URL:$PORT/api/v0/feed"
kubectl exec $POD_NAME -- curl -s $BASE_URL:$PORT/api/v0/feed
#
echo "\n\n*** exec $POD_NAME -- curl $BASE_URL:$PORT/api/v0/users/auth/"
kubectl exec $POD_NAME -- curl -s $BASE_URL:$PORT/api/v0/users/auth/
#
echo "\n\n*** exec $POD_NAME -- curl $BASE_URL:$PORT/api/v0/users/auth"
kubectl exec $POD_NAME -- curl -s $BASE_URL:$PORT/api/v0/users/auth
#
# next line is needed - otherwise api response is on same line as shell prompt
echo "\n"