PERSISTENT_FS=/Users/clemens/Sites/docker/gitlab-runner/fs

docker run \
  --detach \
  --name gitlab-runner \
  --restart always \
  --volume $PERSISTENT_FS/config:/etc/gitlab-runner \
  --volume $PERSISTENT_FS/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
