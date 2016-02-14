SHELL := /bin/bash

.PHONY: dev prod

dev:
	nodemon -e '.ep|.pm' -x 'perl' script/lang

prod:
	./start-restart.sh
