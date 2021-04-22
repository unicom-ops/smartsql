# 容器化安装

# redis安装

采用容器单机版的安装方式，如果已有redis服务可以跳过这一步

## 拉取镜像

```bash
docker pull redis
```

## 启动镜像

```bash
docker run --name some-redis -p 6379:6379 -d redis redis-server --appendonly yes
```

ps: redis的详细安装，可以参考[redis的官网](https://hub.docker.com/_/redis/)

# Mysql的安装

mysql安装开源单机版，详细安装可以参考[Mysql的官网](https://www.mysql.com/)

# 服务启动

## 拉取服务镜像

```
docker pull {images}
```

## 启动服务

```
docker run 
```