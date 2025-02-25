#!/bin/bash
podman build -t unix_games .
podman kill -a
podman run -di -p 4200:4200 unix_games
echo "Container is running at http://localhost:4200/list"