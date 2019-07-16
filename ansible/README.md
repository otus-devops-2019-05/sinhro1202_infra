# sinhro1202_infra repository student Alexey M.

## Homework 8 Ansible-1

Изначально мы удалили директорию reddit
ansible app -m command -a 'rm -rf ~/reddit'

при прогоне плейбука clone.yml 
ansible-playbook clone.yml

Ansible видит, что заданный каталог reddir не существует и создает его, а потом клонирует git.

### Writed scripts

=======================
