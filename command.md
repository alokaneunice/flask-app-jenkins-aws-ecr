# permission to docker in jenkins site on ec2
sudo chmod 777 /var/run/docker.sock
# install docker on ec2 instance for jenkins
sudo apt  install docker.io
# to migrate terraform state from a project to another
terraform init -migrate-state