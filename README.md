# sinhro1202_infra repository student Alexey M.
#hOMEWORK ANSIBLE-3

- Выполненно основное задание.

- Добавлена конфигурация в terraform для открытия 80 порта.
- Опробована работа с anible-vault.

- Задания со * не выполнялись.



#Homework 9 ansible-2

- Выполненно основное задание.

- Сделан сценарии reddit2.app Для deploy.
- Выполнена проверка сценария.
- Созданы несколько плейбуков
- app.yml
- db.yml
- deploy.yml

- переименованы
- reddit_app.yml ➡ reddit_app_one_play.yml
- reddit_app2.yml ➡ reddit_app_multiple_plays.yml

- Выполнен terraform destroy

  и terraform apply

- проверена работа плейбуков

- $ ansible-playbook site.yml --check
- $ ansible-playbook site.yml


## Homework 6 TERRAFORM-1

- Main Tasks

- Created dir terraform and brunch terraform-1 in git.
- Set variable INPUT in main tf for private ssh key
- Set variable zone for "google_compute_instance" "app"
- Formatted config files with terraform fmt
- Created terraform.tfvars.example
-

### Additional tasks with *

1.
- Added code for ssh key for user appuser
- Added code for ssh keys for users appuser1, 2.

## Homework 5

### Main task
- Created variables.json and added to .gitignore
- Created variables-example.json and crated variables-ADD.examples.json with additional parameters
- Created immutable.json

### Tasks with *

- Created immutable.json all additional scrtipts stored in packer/scripts directory
- Created create-redditvm.sh script
This scripts use gcloud console to create new instance with our image reddit-base with applications.


## Homework 4

testapp_IP = 35.207.157.64

testapp_port = 9292

### Writed scripts


- install_mongodb.sh

- install_ruby.sh

- deploy.sh

- firewall.sh

- redditinst.sh

- startup_script1.sh

- old scripts moved to VPN directory

Accomplished main and all additional jobs in homeworks.


=======================


## Homework #3

bastion_IP = 34.77.106.225

someinternalhost_IP = 10.132.0.3

- For one command connection from console to to someinternalhost through bastion host, you should use jump ssh option with key -J

    In my opinion it was

~~~
alex@xubuntu:~/practice-git$ ssh -J alex@34.77.106.225 10.132.0.3
Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.15.0-1034-gcp x86_64)

Last login: Fri Jun 28 08:34:57 2019 from 10.132.0.2
alex@someinternalhost:~$
~~~

### FOR using alias someinternalhost to connect by ssh on your local machine.

- You need edit ssh_config and add Host section. My section Host is:

~~~
Host someinternalhost
    HostName 10.132.0.3
    User alex
    ProxyJump 34.77.106.225
~~~


### Activate SSL certificate on Printul vpn service.

For LetsEncrypt cert you need DNS name for host. I used my own domain and add A record to name zone

~~~
bastion.izbadeluxe.ru.  A (адрес Internet v4) 34.77.106.225

Now you can open page bastion.izbadeluxe.ru with correct SSL certificate.
~~~
