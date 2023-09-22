# Infrastructure Bootcamp Instructions

### 1. Install Docker for Mac as here

```bash
brew install docker (Install docker Client)
docker version (Verify docker is installed)
brew install docker-compose (Install docker-compose)
docker-compose version (Verify docker-compose is installed)
brew install colima (Install colima for docker engine)
colima version (Verify Colima is installed)
colima start (Start Colima)
docker run -ti  hello-world  (Verify docker container running)
colima stop (Stop Colima)
```

### 2. Install Kubernetes command line

```bash
brew install kubectl (k8s command line client tool)
```

### 3. Install Minikube using brew

```bash
brew install minikube
minikube start (open VirtualBox if used it and see minikube instance running, first time it can take upto 10-15 min)
minikube status
```

### 4. Verify minikube and kubectl working fine using following command

```bash
kubectl run -i --tty busybox --image=busybox -- sh (you will see a linux prompt as # or $)
ctrl + d (exit)
```

### 5. On terminal and run following commands

```bash
eval $(minikube docker-env)
docker images  (empty list)
docker pull openjdk (download default java image from docker hub)
docker pull openjdk:slim (download another java image)
docker pull openjdk:alpine (download another java image)
docker pull mongo (download mongodb image)
docker images ( should see above 4 images in list)
```

### 6. Stop Minikube cluster running on VirtualBox

```bash
minikube stop 
```

### 7. Download/clone sample project repo and run test

```bash
git clone https://github.com/rxvctw/metadata-service.git (clone repo from github)
cd metadata-service
mvn clean test (run tests and see everything is working on local, you need Java 8+ and Maven installed)
brew install openjdk@8 (Install openjdk8)
sudo ln -sfn /usr/local/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk (Create symbolic link)
java -version (Verify java installation)
brew install maven
mvn spring-boot:run (starting application locally)
curl http://localhost:8080/actuator/info (checking if its working fine)
```
