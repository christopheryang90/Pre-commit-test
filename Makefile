#include .env
#export $(shell sed 's/=.*//' .env)
	
default: dev

.PHONY: dev
dev:
	pip3 install pre-commit
	pre-commit install
	#git config core.hooksPath ./scripts/githooks
	