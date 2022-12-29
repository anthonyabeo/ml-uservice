[![anthonyabeo](https://circleci.com/gh/anthonyabeo/ml-uservice.svg?style=svg)](https://app.circleci.com/pipelines/github/anthonyabeo/ml-uservice)

## Project Overview

This project deploys a Machine Learning application on a Kubernetes cluster. 

It employs `Makefile` for consolidating and running commands, Circle CI for continous integration, `Dockerfile` for building an image and other shell scripts for running and testing the application.

FILES
| File          | Description   |        
| ------------- |:-------------:| 
| Dockerfile    | building docker images |
| Makefile     | consolidation and running commands |
| app.py | main application |
| run_docker.sh | build and run docker container |
| upload_docker.sh | push docker image to DockerHub |
| run_kubernetes.sh | deploy and run application on Kubernetes |
| requirements.txt | list of Python packages the app utilizes |
| make_prediction.sh | run a test inference on the application |
---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
$ python3 -m pip install --user virtualenv
$ python3 -m virtualenv --python=<path-to-Python3.7> .devops
$ source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running the application

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

The application will be listening on port 8000 on the localhost. To test it out, run the `make_prediction.sh`.

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
