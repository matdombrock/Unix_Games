# Unix Games in a Browser
A collection of legendary unix terminal games made playable in the browser with shellinabox. 

Includes:
- adventure
- battlestar
- nethack
- crawl
- tome
- cdda
- ch33ter
- zangband
- slashem
- top (utility)

## Setup
### Edit the artwork
Modify the file at `custom/art.txt` to include your own custom artwork.

### Edit the hostname
Modify the file at `custom/host.txt` if you want to display something aside from `localhost:4200` on the listing page. 

## Build the image
```bash
podman build -t unix_games
```

## Run the image 
```bash
podman run -di -p 4200:4200 unix_games
```

The server will be available at https://localhost:4200/list

## Running publicly
The `shellinabox` program supports the use of SSL certs but this image has SSL disabled by default. If you want to run this publicly you will want to either install and use an SSL cert or put this behind a reverse proxy of some kind. 

You will also want to edit the `shellinabox` config to remove the root shell access. 

### Edit the shellinabox config
Modify the file at `src/shellinabox` to disable the root shell access if you want to run this publicly. 