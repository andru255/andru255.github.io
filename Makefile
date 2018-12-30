USER_ID=$(shell id -u)
USER_GROUP=$(shell id -g)
USER= $(USER_ID):$(USER_GROUP)

# Para generar un nuevo post
# make new_post name="demo"
new_post:
	docker-compose run --rm --user ${USER} hugocker hugo new posts/${name}.md

# Para generar un nuevo post
# make server_draft
server_draft: 
	docker-compose run --publish 1313:1313 --rm --user ${USER} hugocker hugo server -D --bind=0.0.0.0

# Para generar un nuevo post
# make server
server: 
	docker-compose run --publish 1313:1313 --rm --user ${USER} hugocker hugo server --bind=0.0.0.0

# Para generar un nuevo post
# make build_draft
build_draft:
	rm -fr blog
	docker-compose run --rm --user ${USER} hugocker hugo -D -v

# Para generar un nuevo post
# make build
build:
	rm -fr blog
	docker-compose run --rm --user ${USER} hugocker hugo -v