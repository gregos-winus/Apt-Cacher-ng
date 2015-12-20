FROM debian:latest
RUN apt-get update 
RUN apt-get -y install apt-cacher-ng
EXPOSE 3142
VOLUME      ["/var/cache/apt-cacher-ng"]
CMD chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*


docker build -t apt-cacher-ng .
docker run -v /rep/hote:/var/cache/apt-cacher-ng -p 3142:3142 apt-cacher-ng