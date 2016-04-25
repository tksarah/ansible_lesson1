
#Lesson1 for Ansible Handson
with Docker v1.11

# Administration tasks
Ansible ハンズオンを行うためのホスト側の準備。

## Preparation
* すでにAnsibleホスト用、ターゲット用のDockerコンテナイメージが準備されている
* リバースプロキシのDockerコンテナイメージが準備されている
* lesson1_files/tools/setup.sh の HOSTADDR にホストのIPアドレスを入れる

## Run Playbook
ユーザ毎にハンズオンできるように準備するためのPlaybookを実行する。

```
ansible-playbook -i hosts -e uname=hoge playbook
```

## Run exec
出力されたポートにフォワーディングをかけるようにリバースプロキシの設定を行う。

```
docker exec -it rproxy bast
```

* edit /etc/nginx/sites-available/proxy 
* restart nginx


