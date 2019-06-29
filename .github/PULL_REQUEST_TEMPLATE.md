# Выполнено ДЗ № 4

 - [*] Основное ДЗ
 - [*] Задание со *

## В процессе сделано:
 ### Пункт 1

 testapp_IP = 35.207.157.64

 testapp_port = 9292

 - APP is installed and working


 ### Пункт 2

 Writed all scripts in homeworks include additional jobs.

 - install_mongodb.sh

 - install_ruby.sh

 - deploy.sh

 - firewall.sh

 - redditinst.sh

 - startup_script1.sh

 - old scripts moved to VPN directory

### Пункт 3

 Script redditinst.sh create vm instance in GCP and run startup_script1.sh for install APP mongo and PUMA.

Script firewall.sh make rule default-puma-server
 in GCP.

## Как запустить проект:

 - Run script redditinst.sh

## Как проверить работоспособность:
 - Например, перейти по ссылке http://35.207.157.64:9292


## PR checklist
 - [*] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания

===============================================================

# Выполнено ДЗ № 3

 - [*] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Пункт 1

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

 - Пункт 2

 ### FOR using alias someinternalhost to connect by ssh on your local machine.

 - You need edit ssh_config and add Host section. My section Host is:

 ~~~
 Host someinternalhost
     HostName 10.132.0.3
     User alex
     ProxyJump 34.77.106.225
 ~~~
 -  Пункт 3

 ### Activate SSL certificate on Printul vpn service.

 For LetsEncrypt cert you need DNS name for host. I used my own domain and add A record to name zone

 ~~~
 bastion.izbadeluxe.ru.  A (адрес Internet v4) 34.77.106.225

 Now you can open page bastion.izbadeluxe.ru with correct SSL certificate.
 ~~~
## Как запустить проект:
 - Например, запустить команду X в директории Y

## Как проверить работоспособность:
 - Например, перейти по ссылке https://bastion.izbadeluxe.ru


## PR checklist
 - [*] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания
