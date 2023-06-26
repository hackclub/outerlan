# matrix @ outerLAN

## requirements
- docker
- docker-compose
- a ubuntu-like operating system (debian, ubuntu, wsl, etc)

## installation
1. clone this repo
2. clone `https://github.com/aboutdavid/cinny-outerlan.git` and build it as `outerlan/cinny:latest` using `docker build -t outerlan/cinny:latest .`
2. run ./genconfig.sh and look into the `data` folder. make adjustments accordingly to fit your use case (if deploying at outernet, changes will most likely not have to be made).
3. btw, append the following to homeserver.yaml so it works offline:
```yaml
enable_registration: True
enable_registration_without_verification: True
no_tls: True
```
4. run docker-compose up -d
5. making a admin user:
```bash
docker exec -it synapse register_new_matrix_user http://localhost:8008 -c /data/homeserver.yaml
```
6. tada!

## to make changes
1. make the changes in the `data` folder
2. run `docker-compose up -d`
3. tada!