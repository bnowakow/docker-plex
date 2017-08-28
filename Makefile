
build:
	docker build -t linuxserver/plex .

create:
	docker create \
		--name=plex \
		--net=host \
		-e VERSION=latest \
		-e PUID=<UID> -e PGID=<GID> \
		-e TZ=<timezone> \
		-v </path/to/library>:/config \
		-v <path/to/tvseries>:/data/tvshows \
		-v </path/to/movies>:/data/movies \
		-v </path for transcoding>:/transcode \
		linuxserver/plex

