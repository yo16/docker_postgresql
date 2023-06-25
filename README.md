# docker_postgresql
PostgreSQLをDockerfileで作るサンプル

# ビルド
docker build -t mypostgre . --no-cache

# コンテナ起動
docker run -p 5432:5432 mypostgre

# 接続
- 127.0.0.1:5432
- user/passwordは、Dockerfileで定義したもの
