


### Build docker images

**Database**
```
docker build -t database:V0 \
--build-arg ROOT_PASS=<Senha do MySQ> \
./database/

```

docker build -t database:V0 \
--build-arg ROOT_PASS=patinho \
./database/

**Backend**
```
docker build -t backend:V0 --build-arg ROOT_PASS= --build-arg ./backend/

docker build -t backend:V0 \
--build-arg ROOT_PASS=<Senha do MySQL> \
--build-arg SERVERNAME=<Hostname do MySQL> \
./backend/


docker run backend:V0
```
docker build -t backend:V0 \
--build-arg ROOT_PASS=patinho \
--build-arg SERVERNAME=172.17.0.2 \
./backend/





