# The White Rabbit Development Database

## Subindo os bancos de dados
1. Crie um arquivo chamado `.env` na raiz do repositório. Você pode usar arquivo
   `.env.example` como base.

2. Caso a rede `docker-db` não esteja criada crie com o comando:
```sh
docker network create --driver=bridge db-vuda-net
```

3. Suba os containers com o comando:
```sh
$ docker compose up -d
```

## Comando pra reboot
```sh
$ docker compose down -v && docker compose up -d
```