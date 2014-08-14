## To start on Digital Ocean

```bash
$	cp devops/hosts.example devops/hosts  # modify with your server
$ ansible-playbook devops/webserver.yml -i devops/hosts
$ ansible-playbook devops/deploy.yml -i devops/hosts --user=root
```

## To start locally

```bash
vagrant up
ansible-playbook devops/deploy.yml -i devops/hosts_vagrant --private-key=$HOME/.vagrant.d/insecure_private_key --user=vagrant
```

Go to http://192.168.33.10/

## Based on

- [Flask/WSGI Application Deployment with Ubuntu, Ansible, Nginx, Supervisor and uWSGI](http://mattupstate.com/python/devops/2012/08/07/flask-wsgi-application-deployment-with-ubuntu-ansible-nginx-supervisor-and-uwsgi.html)
- [Multi Server Flask Application Development Environment with Vagrant and Ansible](http://mattupstate.com/python/devops/2012/08/30/multi-server-flask-application-development-enviornment-with-vagrant-and-ansible.html)
- Modifications done at  https://github.com/agarwlGaurav/ansible-tutorial
- https://github.com/mattupstate/ansible-tutorial/network


- https://github.com/cryptojuice/ansible-flask-boilerplate

- https://github.com/mjhea0/flask-boilerplate
