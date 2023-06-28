# matrix @ outerLAN

## requirements
- docker
- docker-compose
- a ubuntu-like operating system (debian, ubuntu, wsl, etc)

## installation
1. clone this repo
2. clone `https://github.com/aboutdavid/cinny-outerlan.git` and build it as `outerlan/cinny:latest` using `docker build -t outerlan/cinny:latest .`. Also build `sbpostgres` as "sbpostgres:latest"
3. run `./genconfig.sh` in the `matrix` folder and look into the `matrix/data` folder. make adjustments accordingly to fit your use case (if deploying at outernet, changes will most likely not have to be made).
3.1 also generate the appservice file:
```
docker run -v ./sb_config:/config/ matrixdotorg/matrix-appservice-slack -r -c /config/config.yaml -u "http://localhost:8008" -f /config/slack-registration.yaml
```

4. run docker-compose up -d
5. make a few admin users:
```bash
docker exec -it synapse register_new_matrix_user http://localhost:8008 -c /data/homeserver.yaml
```
6. tada! please don't hand out admin to *every single person* (give it to trustworthy users & commie team)

## to make changes
1. make the changes in the `data` folder
2. run `docker-compose up -d`
3. tada!