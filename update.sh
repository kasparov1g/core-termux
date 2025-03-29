#!/bin/bash
exec </dev/tty

source ~/.core-termux/config

# Core-Termux Update
cd ${core}
git fetch
local_commit=$(git rev-parse main)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
	echo -e -n "${D_CYAN}A new update is available.
Would you like to update ${CYAN}Core-Termux${D_CYAN}? [Y/n] ${WHITE}"
	read -r updateOption

	if [[ "${updateOption}" == "y" || "${updateOption}" == "Y" ]]; then
		git pull origin main
		exec bash bootstrap.sh
	elif [[ "${updateOption}" == "n" || "${updateOption}" == "N" ]]; then
		echo -e "Abort"
		cd
	else
		echo -e "Error"
		cd
	fi
else
	echo -e ""
fi

# NvChad-Termux Update

cd ~/.core-termux/nvchad-termux/
git fetch
local_commit=$(git rev-parse main)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
	echo -e -n "${D_CYAN} A new update is available.
Would you like to update ${CYAN}NvChad-Termux${D_CYAN}? [Y/n] ${WHITE}"
	read -r nvchadUpdate

	if [[ "${nvchadUpdate}" == "y" || "${nvchadUpdate}" == "Y" ]]; then
		git pull origin main
		exec bash bootstrap.sh
	elif [[ "${nvchadUpdate}" == "n" || "${nvchadUpdate}" == "N" ]]; then
		echo -e "Abort"
		cd
	else
		echo -e "Error"
		cd
	fi
else
	echo -e ""
	cd
fi
