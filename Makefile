USER=andrepopoff

ping:
	ansible all -i inventory.ini -u $(USER) -m ping

create_users:
	ansible-playbook --check playbook.yaml -i inventory.ini -t users -u $(USER)

update_apt:
	ansible-playbook --check playbook.yaml -i inventory.ini -t apt -u $(USER)

install_dependencies:
	ansible-playbook --check playbook.yaml -i inventory.ini -t install -u $(USER)
