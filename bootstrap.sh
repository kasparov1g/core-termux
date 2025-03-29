#!/bin/bash
source ~/.core-termux/config

echo -e "${D_CYAN}Updating Core-Termux...${WHITE}"

# node modules list
node_modules=(
	"@devcorex/dev.x"
	"typescript"
	"@nestjs/cli"
	"prettier"
	"live-server"
	"localtunnel"
	"vercel"
	"markserv"
)

# update termux repositories
echo -e "${D_CYAN}Updating termux repositories...${WHITE}"
yes | pkg update && yes | pkg upgrade

# update node modules
echo -e "${D_CYAN}Updating node modules...${WHITE}"
for module in "${node_modules[@]}"; do
	if [[ "${module}" == "@nestjs/cli" || "${module}" == "@devcorex/dev.x" ]]; then
		version=$(npm list -g ${module} --depth=0 | grep ${module} | awk -F '@' '{print $3}')
	else
		version=$(npm list -g ${module} --depth=0 | grep ${module} | awk -F '@' '{print $2}')
	fi

	if [[ "${version}" != "$(npm show ${module} version)" ]]; then
		echo -e "Updating ${module}..."
		npm install -g ${module}@latest
	fi
done
