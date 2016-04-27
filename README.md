
#Lesson1 for Ansible Handson
 with Docker v1.11

## Administration tasks
まず、ホストの準備をする。（未記載,これもPlaybook用意）

## Preparation
* Ansibleホスト用、ターゲット用のDockerコンテナイメージが準備されている
* リバースプロキシのDockerコンテナイメージが準備されている
* このリポジトリを clone した後、lesson1_files/tools/setup.sh の HOSTADDR にホストのIPアドレスを入れる

## Details of this playbook 
Ansible ハンズオンを行うための以下の準備を行うPlaybook。
* リバースプロキシの起動（Dockerコンテナ内と外との80ポートをつなぐ）
* ハンズオン実施ユーザを複数作成
* ユーザのホームディレクトリにハンズオン用のツールを配置
* ユーザ毎にAnsible HostとAnsible Targtのコンテナを起動
 
## Run Playbook
ユーザ毎にハンズオンできるように準備するためのPlaybookを実行する。

```
ansible-playbook -i hosts main.yml
```

## Run exec
出力されたポートにフォワーディングをかけるようにリバースプロキシの設定を行う。

```
docker exec -it rproxy bast
```

* edit /etc/nginx/sites-available/proxy 
* restart nginx


