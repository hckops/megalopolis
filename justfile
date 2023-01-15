DOCKER_REPOSITORY := "hckops"

# print usage
@default:
  just --list

# list images
docker-list:
  docker images --format "table {{{{.ID}}\t{{{{.Repository}}\t{{{{.Tag}}" {{DOCKER_REPOSITORY}}/box-*

# build images
docker-build:
  docker build -t {{DOCKER_REPOSITORY}}/box-alpine docker/box-alpine

# cleanup images and containers
docker-clean:
  # remove container by name
  docker ps -a -q -f name=box-* | xargs --no-run-if-empty docker rm -f
  # remove image by name
  docker images -q {{DOCKER_REPOSITORY}}/box-* | xargs --no-run-if-empty docker rmi -f
  # delete dangling images <none>
  docker images -q -f dangling=true | xargs --no-run-if-empty docker rmi -f
  # delete dangling volumes
  docker volume ls -q -f dangling=true | xargs --no-run-if-empty docker volume rm -f

# build all
build: docker-build
