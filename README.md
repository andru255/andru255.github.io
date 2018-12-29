# andru255 blog

En este repositorio se encuentra el código fuente y el sistema que genera mi blog

## Herramientas

- Docker (17.x ó versión mas reciente)

- Git (2.x ó versión mas reciente)

- Docker compose (1.6.x ó versión mas reciente)

## Flujo de trabajo

Es necesario ejecutar estos comandos dentro de la carpeta principal del repo, en este caso
al clonarlo toma el nombre por defecto **andru255.github.io**, entonces debo aplicar el comando en terminal:

```
cd andru255.github.io
```

o verificar que estoy en esa carpeta ejecutando el comando:

```
echo $PWD
```

Para crear un nuevo post realizo el siguiente comando:

```
docker-compose run --rm --user $(id -u):$(id -g) hugocker hugo new post/my-post-demo.md
```

Para visualizar el blog en local:

```
docker-compose run --publish 1313:1313 --rm --user $(id -u):$(id -g) hugocker hugo server -D --bind=0.0.0.0
```

Para realizar un **build** del blog:

```
docker-compose run --rm --user $(id -u):$(id -g) hugocker hugo -D -v
```