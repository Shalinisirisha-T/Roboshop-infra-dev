
component=$1
environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/Shalinisirisha-T/Ansible-roboshop-roles.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml