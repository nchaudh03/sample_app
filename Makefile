.PHONY: build run unit_test

build:
	docker build -t test -f Dockerfile .

run:
	docker run --rm -p 5000:5000 test

jenkins:
	docker run -p 8080:8080 -p 50000:50000 -d -u root --privileged -v jenkins_homee:/var/jenkins_home -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock  jenkins/jenkins:latest

unit_test:
	poetry run pytest tests/


default: build