# docker-logarr

To run:
```
docker run \
	--name logarr -p 80:80 \
	-v /opt/logarr/config.php:/var/www/html/logarr/config/config.php:ro \
	-v /path/to/log/example.log:/log/example.log:ro \
	kmlucy/docker-logarr
```

You must create the config file before running. You can get an example file by running the container without any options and copying the file out:
```
docker run --name logarr --rm kmlucy/docker-logarr
docker cp logarr:/var/www/html/logarr/config/config.php /opt/logarr/config.php
docker stop logarr
```

Based on: [seanvree/logarr](https://github.com/seanvree/logarr)
