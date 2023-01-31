
# Docker Media Server

This bash script will help you to automatically set up the basic docker containers you need for a media server from scratch.
NOTE:you must not have a docker directory inside your /home/$USER/
This script wont install docker and docker compose make sure you already have it.

## Documentation

Containers set up are :-
### Frontend

1. Nginx Proxy Manager - Reverse Proxy with LetsEncrypt. WebUI port - 81
2. Portainer - WebUI for Containers. WebUI port - 9000
3. Heimdall - Simple Dashboard. WebUI port - 83

### Downloaders

1. Transmission - Torrent Downloader. WebUI port - 9091
2. Prowlarr - Indexer. WebUI port - 9696
3. Flaresolverr -For Prowlarr.  WebUI port - 8191
4. Lidarr - Music. WebUI port - 8686
5. Radarr - Movies. WebUI port - 7878
6. Sonarr - Shows. WebUI port - 8989
7. Readarr - Books. WebUI port - 8787
8. Jellyfin - Media Player. WebUI port - 8096
9. Kavita - Reading. WebUI port - 5000
10. Tdarr - Transcoding . WebUI port - 8265

### Utilities

1. Dozzle - Real-time Docker Log Viewer. WebUI port - 8080
2. File Browser - Explorer. WebUI port - 82

### Maintenance

1. WatchTower - Automatic Docker Container Updates. 
## Deployment

To install docker and compose run
```bash
sudo apt-get update
```

```bash
wget -O /home/$USER/installdocker.sh https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/installdocker.sh
```
```bash
bash installdocker.sh
```
To install this script run
```bash
sudo apt-get update
```

```bash
wget -O /home/$USER/dockermediaserver.sh https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/docker-media-server.sh
```
```bash
bash dockermediaserver.sh
```
Once you run the script .env file will open change UGID, PGID, Time Zone and data directory where you want to store your data.
Once done Save the file and run
```bash
sudo docker compose up
```
