Construire le container docker

docker build -t apt-cacher-ng .


Lancer le container

docker run -v /REP/HOTE:/var/cache/apt-cacher-ng -p 3142:3142 apt-cacher-ng
