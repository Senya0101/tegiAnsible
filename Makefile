.PHONY: all packages users skip-users list-tags

all:
	ansible-playbook -i inventory.ini playbook.yml

packages:
	ansible-playbook -i inventory.ini playbook.yml -t packages

users:
	ansible-playbook -i inventory.ini playbook.yml -t users

skip-users:
	ansible-playbook -i inventory.ini playbook.yml --skip-tags users

list-tags:
	ansible-playbook -i inventory.ini playbook.yml --list-tags
