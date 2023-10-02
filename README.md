# Alist+Aria2-Render

## 鸣谢

- [alist-org/alist](https://github.com/alist-org/alist)
- [P3TERX/aria2.conf](https://github.com/P3TERX/aria2.conf)

## 项目介绍

~~只是一个缝合项目~~


### 一键部署到Render 

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)


## 注意

您需要修改一下.yaml文件的git地址，改为您fork仓库的您的仓库https地址

如果是之前部署的您需要在环境变量中添加
> ```json
>   "PORT": "5244"
> ```


### 数据库

您可能需要使用另一个远程 MySQL 数据库 或是 PostgreSQL 数据库，因为默认的sqlite重新部署将丢失您的全部数据。

下面是一些免费数据库:

- https://db4free.net/
- https://remotemysql.com/
- https://www.freesqldatabase.com/
- https://planetscale.com/
- https://www.elephantsql.com/
- https://scalingo.com/
- http://cloud.yugabyte.com/

如何更改数据库？

在 Environment 中添加变量。

数据库是私有的，因此您无需担心泄露数据。(只要您没有~~不小心~~泄露了数据库密码账号)

### MySQL数据库示例（注意不要带“”号）
> ```json
>   "DB_TYPE":"mysql",
>   "DB_HOST":"sql.com",
>   "DB_PORT":"3306",
>   "DB_USER":"账号",
>   "DB_PASS":"密码",
>   "DB_NAME":"数据库名称",
>   "DB_TABLE_PREFIX":"alist_",
>   "DB_SSL_MODE":"true"
### PostgreSQL
> ```json
>   "DB_TYPE": "postgres",
>   "DB_HOST": "sql.com",
>   "DB_PORT": "5432",
>   "DB_USER": "账号",
>   "DB_PASS": "密码",
>   "DB_NAME": "数据库名称",
>   "DB_TABLE_PREFIX": "alist_",
>   "DB_SSL_MODE": "require"
> ```


### db4free示例 https://db4free.net
> ```json
>   "DB_TYPE": "mysql", 
>   "DB_HOST": "db4free.net", 
>   "DB_PORT": "3306", 
>   "DB_USER": "账号", 
>   "DB_PASS": "密码", 
>   "DB_NAME": "数据库名称", 
>   "DB_TABLE_PREFIX": "alist_", 
>   "DB_SSL_MODE": "false" 
> ```

更多变量及说明请参考： 
 https://github.com/alist-org/alist/blob/main/internal/conf/config.go 
  
 https://alist.nn.ci/zh/config/configuration.html

### 密码

未接入数据库时密码在logs中生成，接入数据库以后请查看您的数据库生成的文件
