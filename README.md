# Running FastAPI React Application on Kubernetes

[![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)](https://github.com/tiangolo/fastapi)
[![React](https://img.shields.io/badge/React-005571?style=for-the-badge&logo=react)](https://reactjs.org/)

## Source code

### Backend
FastAPI Todo App: [click](https://github.com/borys25ol/fastapi-todo-example-app)

### Frontend
React Todo App: [click](https://github.com/borys25ol/react-todo-example-app)

## Docker images:

### Backend
FastAPI: `borysol25/fastapi-todo-api`

Database: `postgres:14.2`

### Frontend
React: `borysol25/react-todo-frontend`

You can also build docker images on your side using source code in `Source code` section.


## Stack

### Backend stack:
- FastAPI
- PostgreSQL
- SQLAlchemy
- Alembic
- Docker-Compose

### Frontend stack:
- React.js
- Styled Components
- React Router
- Redux Toolkit

### Deploy stack:
- Docker
- Kubernetes
- Minikube

## Local install

### Docker
Build the images and spin up the containers:

```sh
$ make docker_build
```

Test it at:

1. React App: [http://localhost:3000](http://localhost:3000)
2. FastAPI Swagger [http://localhost:5000](http://localhost:5000)

### Kubernetes

#### Minikube

Install and run [Minikube](https://kubernetes.io/docs/setup/minikube/):

1. Install and Set Up [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) to deploy and manage apps on Kubernetes
2. Install [Minikube](https://github.com/kubernetes/minikube/releases)

Start the cluster:

```sh
$ minikube start
$ minikube dashboard
```

Apply all manifest files:

```sh
$ make deploy
```