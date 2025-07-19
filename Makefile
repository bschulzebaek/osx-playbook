install-private:
	ansible-playbook -i "localhost," -c local playbook-private.yaml
	
install-shopware:
	ansible-playbook -i "localhost," -c local playbook-shopware.yaml