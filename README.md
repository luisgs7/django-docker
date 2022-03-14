# Configurando um Dockerfile para executar um projeto django

Build de uma imagem docker a partir do Dockerfile
```
docker build -t guniversity/<name_container>:v1 .
```

Run do container a partir do nome da imagem
```
docker run --name "appdj" -d -p 8000:8000 luisgs7/<name_container>:v1
```

Docker networks, lista os diferentes tipos de redes do docker
```
docker network ls
```

Listar as redes de um container
```
docker run --rm alpine:3.12.1 sh -c "ifconfig"
```

Cria um container sem rede
```
docker run --net none --rm alpine:3.12.1 sh -c "ifconfig"
```

Utiliza a mesma rede do host
```
docker run --net host --rm alpine:3.12.1 sh -c "ifconfig"
```

Realiza o comando inspect em uma rede
```
docker network inspect bridge
```

Run container do alpine durante 5000 segundos 
```
docker run --name "container_1__bridge" -d alpine:3.12.1 sleep 5000
```

Acessar as configurações de rede de um container
```
docker exec -it container_2__bridge ifconfig
```

```
docker exec -it container_2__bridge ping <ip-container>
```

Acessar as o shell de um container
```
docker exec -it container_2__bridge sh
```

Criar uma nova faixa de rede
```
docker network create --driver bridge new_network
```

Container utilizando a nova rede
```
docker run --name "container_3__bridge_new" -d --net new_network alpine:3.12.1 sleep 5000
```

Conectar um container a uma outra rede de faixa de ips diferentes
```
docker network connect bridge container_3__bridge_new
```

Desconectar da nova faixa de rede de ips
```
docker network disconnect bridge container_3__bridge_new
```