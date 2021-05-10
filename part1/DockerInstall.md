# 安装

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

ps: redis详细安装，可以参考[redis的官网](https://hub.docker.com/_/redis/)

# Mysql的安装

mysql安装开源单机版，详细安装可以参考[Mysql的官网](https://www.mysql.com/)


# 主体服务的启动

## Mysql库初始化

### 创建ops_ui库
```
CREATE DATABASE `ops_ui` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
```
执行初始化sql脚本 

<a href="sql/dump-ops_ui-202105101124.sql" target="_blank">dump-ops_ui-202105101124.sql下载</a>

### 创建smart_sql库

```
CREATE DATABASE `smart_sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

```
执行初始化sql脚本 
<a href="sql/dump-smart_sql-202105101124.sql" target="_blank">dump-smart_sql-202105101124.sql下载</a>

## 拉取服务镜像

```
# 拉取前端镜像
docker pull docker.io/lightops/ops-ui:0.0.1

# 拉取网关镜像
docker pull docker.io/lightops/ops-gateway:0.0.1

# 拉取SQL审核服务镜像
docker pull docker.io/lightops/smartsql:0.0.1
```

## 启动审核服务

```

docker run -itd -p [宿主机Port]:[容器Port] -e PRIMARY_DB=[数据库地址] -e PRIMARY_DB_USERNAME=[数据库用户名] -e PRIMARY_DB_PASSWORD=[数据库密码] -e REDIS_HOST=[redis的IP] -e REDIS_PORT=[redis的端口] ${镜像} 

# 示例
docker run -itd -p 8090:8090 -e PRIMARY_DB=10.253.9.213:33306 -e PRIMARY_DB_USERNAME=root -e PRIMARY_DB_PASSWORD=33306@123 -e REDIS_HOST=10.253.9.213 -e REDIS_PORT=36379 smartsql:0.0.1
```


## 启动网关服务

```
docker run -itd -p [宿主机Port]:[容器Port] -e PRIMARY_DB=[数据库地址] -e PRIMARY_DB_USERNAME=[数据库用户名] -e PRIMARY_DB_PASSWORD=[数据库密码] -e REDIS_HOST=[redis的IP] -e REDIS_PORT=[redis的端口] -e SQL_BACKEND=[SQL审核服务地址] ${镜像} 

# 示例
docker run -itd -p 19528:19528 -e PRIMARY_DB=10.253.9.213:33306 -e PRIMARY_DB_USERNAME=root -e PRIMARY_DB_PASSWORD=33306@123 -e REDIS_HOST=10.253.9.213 -e REDIS_PORT=36379 -e SQL_BACKEND=10.253.9.213:18090 ops-gateway:0.0.1

```

## 启动前端服务

```
docker run -itd -p [宿主机Port]:[容器Port] -e GATEWAY_HOST=[网关IP] -e GATEWAY_PORT=[网关端口] ${镜像} 

# 示例
docker run -itd -p 8081:8081 -e GATEWAY_HOST=10.253.9.213 -e GATEWAY_PORT=19528 ops-ui:0.0.1
```

