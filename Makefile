.PHONY: setup_vagrant setup_remote deploy_vagrant deploy_remote

setup_vagrant:
	vagrant up

setup_remote:
	ansible-playbook devops/webserver.yml -i devops/hosts -u root

deploy_vagrant:
	ansible-playbook devops/deploy.yml \
	    -i devops/hosts_vagrant \
	    --private-key=$HOME/.vagrant.d/insecure_private_key \
	    -u vagrant

deploy_remote:
	ansible-playbook devops/deploy.yml -i devops/hosts -u root
