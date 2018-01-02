HTTP_PORT=8080
HTTPS_PORT=4443
SSH_PORT=8022
PERSISTENT_FS=/Users/clemens/Sites/docker/gitlab/fs

docker run --detach \
    --hostname gitlab.example.com \
    --publish $HTTPS_PORT:443 \
    --publish $HTTP_PORT:80 \
    --publish $SSH_PORT:22 \
    --name gitlab \
    --restart always \
    --volume $PERSISTENT_FS/config:/etc/gitlab \
    --volume $PERSISTENT_FS/logs:/var/log/gitlab \
    --volume $PERSISTENT_FS/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
