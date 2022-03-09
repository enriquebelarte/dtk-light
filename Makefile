CONTAINER_ENGINE ?= docker
PWD              ?= $(shell pwd)			

verify: 
	cat ./Dockerfile

test-e2e:
	./test/e2e

templates:
	./dtkctl make_templates

drivercontainer:
	./dtkctl install_drivercontainer
 
buildconfig:
	./dtkctl install_buildconfig

destroy:
	./dtkctl destroy

nvidia:
	/dtkctl nvidia
