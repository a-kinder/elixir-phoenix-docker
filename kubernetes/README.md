what is kubernetes?
 - The name Kubernetes originates from Greek, meaning helmsman or pilot, and is the root of governor and cybernetic. K8s is an abbreviation derived by replacing the 8 letters “ubernete” with “8”.
 - Created by google but is now open source (Kelsey Hightower is our god!)
 - container orchestration. Uses images to easily manage deployments of your app among many other functions that lend itself to a microservice architecture
 - with the assistance of containers can replicate environment virtually perfectly across local -> staging -> production

Minikube is a utility where you can run a cluster on your local machine through a VM if you don't have one set up in the cloud. 
Mostly works the same except doesn't have the ability for external load balancers/ingress (kubernetes based load balancing via a special pod controller) for external traffic but has the ability to create virtual load balancer services for local development. 
Also obviously only uses your computer's drive as opposed to storage objects in the cloud

to get minikube running:
 - download virtualbox (or other hypervisor)
 - download kubectl (command line utility)
 - download/start docker daemon
 - download minikube (local cluster virtualization for kubernetes)
 - `minikube start`
 - create application
 - `minikube dashboard`
 - `open $(minikube service demo-deployment --url)`
 
what is a container in this context?
 - an environment that has it's own OS, dependencies, environment variables, etc but shares the kernel with the host (lighterweight than using a full VM for each application)

what is a pod?
 - an instance of your application running on a remote server (or minikube), which is comprised of one or more containers. 
 Usually contains your main app, but might also have other services as sidecar containers such as a service mesh container or a container that sets up a volume for use by the main container (ie when we used it for configuring rabbitmq).
 Kubernetes will load balance between each pod running under the service.

Topics: 
 - briefly explain manifests and resources (configmaps/secrets, deployments, services)
 - create a 2-pod deployment
 - scale up/down `kubectl scale deployment demo-deployment --replicas=3`
 - make mistake in env var to show that old pods don't terminate
 - add an environment variable and read from it
 - add a sidecar container (maybe to set up shared volume?)
 - create 3rd party app (minio)
 - talk about: 
    rolling updates
    automatic updates running kubectl on CI tool (start to finish automatic CI/CD)
    running jobs/cronjobs (standalone or from within an app)
    podaffinity (different availability zones for HA, etc)
    automatic TLS provisioning
    autoscaling
    daemonsets(instance of pod on each node)/statefulsets(HA, static DNS names, but slower than deployment)
    service discovery (great for things like prometheus monitoring)


 Potential 3rd party solutions:
  - service mesh (encryption in transit)
  - cloud storage 
  - trello replacement?

  learn more: kubernetes.io