# kubectl exec dnsutils -- nslookup kubernetes.default

echo "*** exec dnsutils -- nslookup udagram-api-feed"
kubectl exec dnsutils -- nslookup udagram-api-feed
#
echo "*** exec dnsutils -- nslookup udagram-api-user"
kubectl exec dnsutils -- nslookup udagram-api-users