.PHONY: build run

build:
	docker build -t test -f Dockerfile .

run:
	docker run --rm -p 5000:5000 test

jenkins:
	docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_homee:/var/jenkins_home jenkins/jenkins:latest



default: build