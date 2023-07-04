---
title: "OuterLAN Setup"
---

# Welcome to the OuterLAN!

### This page will help you get started with the network  

## CA Installation
---

## Identity
---

## Matrix
---
1. `cd cinny` and build it using `./buildcinny.sh` (Pulls or clones cinny from upstream)
2. `cd sbpostgres` and build it using `docker build -t outerlan/sbpostgres:latest .`
3. Run `./genconfig.sh` in the `matrix` folder and look into the `matrix/data` folder. Make adjustments accordingly.
4. Generate the appservice file for the slack bridge:
```bash
docker run -v ./sb_config:/config/ matrixdotorg/matrix-appservice-slack -r -c /config/config.yaml -u "http://localhost:8008" -f /config/slack-registration.yaml
```

5. run docker-compose up -d
6. make a few admin users:
```bash
docker exec -it synapse register_new_matrix_user http://localhost:8008 -c /data/homeserver.yaml
```
7. tada! please don't hand out admin to *every single person* (give it to trustworthy users & commie team)

### Making changes to matrix config
1. make the changes in the `data` folder
2. run `docker-compose up -d`
3. tada!