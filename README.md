# CompassAtividade

Documentação da Atividade:

Atividade AWS/Linux Compass
Criar a insância com base no que foi solicitado
Criar um uma VPC.
Grupo de segurança com as portas de comunicação liberadas.
Criar um IP Elástico e alocar na instância
_________________________________________________________
sudo yum update- para atualizar pacotes
sudo yum install nfs-utils
mkdir /exports
cd /exports
mkdir joaovictor
sudo systemctl start nfs-servidor
sudo systemctl status nfs-servidor
/pasta_para_compartilhar (ip_cliente)*(rw,sync,no_subtree_check)
sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="client_ip" service name="nfs" accept'
sudo journalctl -u firewalld
_________fim NFS_________________

sudo yum install httpd
sudo systemctl start httpd
sudo systemctl status httpd
-----------------------------------
criação do script
sudo vi status-servidor.sh
sudo crontab -e


10-0-25-213- servidor - 44.210.198.165 
10.0.27.183- cliente - 44.194.39.135

