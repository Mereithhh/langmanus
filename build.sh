set -e
image=mereith/langmanus
docker build --platform linux/amd64 -t $image .
docker push $image
