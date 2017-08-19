# docker-logarr

To run:
```
docker run \
	--name logarr -p 80:80 \
	-v /opt/logarr:/var/www/html/logarr/config \
	-v /path/to/log/example.log:/log/example.log:ro \
	kmlucy/docker-logarr
```

You must create the files in the config folder before running. You can get them from the [Logarr Repository](https://github.com/seanvree/logarr).

Based on: [seanvree/logarr](https://github.com/seanvree/logarr)
