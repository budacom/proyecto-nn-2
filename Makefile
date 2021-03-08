BOLD ?= $(shell tput bold)
NORMAL ?= $(shell tput sgr0)

help:
	@echo "${BOLD} Helper to deploy on runtime from public images on github ${NORMAL}"
	@echo " "
	@echo " You have to have an GITHUB_TOKEN variable at your enviroment to pull the image"
	@echo " A github token is genarated using a Github Personal access token with read:packages scope see: https://github.com/settings/tokens/new"
	@echo " "
	@echo " Then Base64-encode <github-user-name>:<token> and add it as GITHUB_TOKEN in your enviroment"
	@echo " Finally execute: ${BOLD} make apply"

apply:
	@sed -e "s|<MYTOKEN>|${GITHUB_TOKEN}|g" base/secret.yaml | kubectl apply -f -
	@ kubectl apply -k base