#!/bin/bash
exec < /dev/tty

source ~/.core-termux/config

# check if you need to update
cd ${core}
git fetch
local_commit=$(git rev-parse main)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
	echo -e -n "${D_CYAN}A new update is available.
Would you like to update ${CYAN}Core-Termux${D_CYAN}? [Y/n] ${WHITE}"
	read -r updateOption

	if [[ "${updateOption}" == "y" || "${updateOption}" == "Y" ]]; then

		echo -e "${GREEN}Updating Core-Termux...${WHITE}"
		git pull origin main

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
		echo -e "${GREEN}Updating termux repositories...${WHITE}"
		yes | pkg update && yes | pkg upgrade

		# new termux-packages

		if [[ "$(command -v magick)" == "" ]]; then
			yes | pkg install imagemagick
		fi

		# new node_modules

		if [[ "$(command -v markserv)" == "" ]]; then
			npm install -g markserv
		fi

		# update node modules
		echo -e "${GREEN}Updating node modules...${WHITE}"
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

		# update nvchad
		cd ~/.core-termux/nvchad-termux
		git fetch
		local_commit=$(git rev-parse HEAD)
		remote_commit=$(git rev-parse origin/main)

		if [ "${local_commit}" != "${remote_commit}" ]; then
			echo -e "Updating NvChad..."
			git pull origin main
			bash nvchad.sh
		fi

		# update core-termux
		cd ${core} && git pull origin main
		cd
	elif [[ "${updateOption}" == "n" || "${updateOption}" == "N" ]]; then
		echo -e "Abort"
    cd
	else
		echo -e "Error"
    cd
	fi
else
	cd
	echo -e ""
fi
