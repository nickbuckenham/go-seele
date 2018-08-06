# Makefile to build the command lines and tests for the Seele project.
# This Makefile is not developed for Windows environments. If you use it in Windows, please be careful.

all: discovery node client tool vm
discovery:
	go build -o ./build/discovery ./cmd/discovery
	@echo "Done discovery building"

node:
	go build -o ./build/node ./cmd/node 
	@echo "Done node building"

client:
	go build -o ./build/client ./cmd/client
	@echo "Done client building"

tool:
	go build -o ./build/tool ./cmd/tool
	@echo "Done tool building"

vm:
	go build -o ./build/vm ./cmd/vm
	@echo "Done vm building"

.PHONY: discovery node client tool vm
