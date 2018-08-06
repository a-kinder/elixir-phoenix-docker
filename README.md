# Demo

If not already running:

  * Start docker daemon
  * Start minikube with `minikube start`

To start your Phoenix server:

  * Start application with `docker-compose up [--build]`
  * Migrate your database with `docker-compose run app mix ecto.migrate`

To view:

  * `open $(minikube service demo-deployment --url)`

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
  * Kubernetes: https://kubernetes.io/docs/home
  * Docker: https://docs.docker.com