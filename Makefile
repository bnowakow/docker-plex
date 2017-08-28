
build:
	docker build -t linuxserver/plex .

create:
	docker create \
		--name=ovh-plex \
		--net=host \
		-e VERSION=latest \
		-e PUID=1003 -e PGID=1003 \
		-e TZ=Europe/London \
		-v ./data/config:/config \
		-v /media/tbox/_Seriale:/data/tvshows \
		-v /media/tbox/_Filmy:/data/movies \
		-v ./data/transcode:/transcode \
		linuxserver/plex

