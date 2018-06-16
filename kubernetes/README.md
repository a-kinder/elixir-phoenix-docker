K8S LUNCH & LEARN
- create simple website image on docker
- write manifest and deploy on minikube
- ahead of time create manifests for packlane and deploy on minikube
- add new feature and deploy it hot

what is kubernetes?
 - container orchestration. Uses images to easily manage deployments of your app, load-balancing, horizontal scaling, running jobs.
 - could be set up to run on nodes in multiple availability zones, reducing downtime
 - with the assistance of containers can replicate environment virtually perfectly across local -> staging -> production
 - Created by google but is now open source (Kelsey Hightower is our god!)

Minikube is a utility where you can run a cluster on your local machine through a VM if you don't have one set up in the cloud. 

to get minikube running:
 - download virtualbox (or other hypervisor)
 - download kubectl (command line utility)
 - download minikube (local cluster virtualization for kubernetes)
 - `minikube start`
 - create application
 - curl $(minikube service hello-minikube --url)
 
what is a container in this context?
 - an environment that has it's own OS, dependencies, environment variables, etc but shares the kernel with the host (lighterweight than using a full VM for each application)

what is a pod?
 - an instance of your application running on a remote server, which is comprised of one or more containers. Usually contains your main app, but might also have other services as sidecar containers such as redis. Kubernetes may load balance traffic to one or many pods.

To do: 
 - add an environment variable and read from it
 - scale up/down
 - add a sidecar container
 - update kubernetes when image is pushed?