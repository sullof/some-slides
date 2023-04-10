docker stop slides
docker rm slides

docker run --name slides \
  -p 8022 \
  --restart unless-stopped \
  -e VIRTUAL_HOST=slides.sullo.co.local \
  -v `pwd`/html:/usr/share/nginx/html:ro -d nginx
