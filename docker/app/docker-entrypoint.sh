#!/bin/sh
set -e

if [ "$1" = 'pnpm' ] || [ "$1" = 'npm' ] || [ "$1" = 'vite' ]; then

	# Install the project the first time container is started
	# After the installation, the following block can be deleted
	if [ ! -f package.json ]; then
		rm -Rf tmp/
		pnpm create vite tmp --template vue-ts

		cd tmp
		cp -Rp . ..
		cd -
		rm -Rf tmp/

		cp /usr/local/etc/vite.config.ts ./vite.config.ts
	fi

	pnpm install
fi

exec "$@"
