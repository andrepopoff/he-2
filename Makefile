USER=andrepopoff

ping:
	ansible all -i inventory.ini -u $(USER) -m ping
