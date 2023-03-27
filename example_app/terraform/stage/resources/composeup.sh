cp ../../../../python/.env .
ansible-galaxy collection install community.docker
ansible-playbook main.yml -i inventory -e project=$1