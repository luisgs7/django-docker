# Configurando um Dockerfile para executar um projeto django

Build de uma imagem docker a partir do Dockerfile
```
docker build -t guniversity/<name_container>:v1 .
```

Run do container a partir do nome da imagem
```
docker run --name "appdj" -d -p 8000:8000 luisgs7/<name_container>:v1
```