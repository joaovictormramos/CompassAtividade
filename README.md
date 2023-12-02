# CompassAtividade

#Documentação da Atividade:

Atividade AWS/Linux Compass<br>
Criar a insânciA com base no que foi solicitado<br>
Criar um uma VPC.#Grupo de segurança com as portas de comunicação liberadas.<br>
Criar um IP Elástico e alocar na instância<br>
#_________________________________________________________
#               NFS

sudo yum update- para atualizar pacotes<br>
sudo yum install nfs-utils<br>
mkdir /exports<br>
cd /exports<br>
mkdir joaovictor<br>
sudo systemctl start nfs-servidor<br>
sudo systemctl status nfs-servidor<br>
/pasta_para_compartilhar (ip_cliente)*(rw,sync,no_subtree_check)<br>
sudo yum install firewalld<br>
sudo systemctl start firewalld<br>
sudo systemctl enable firewalld<br>
sudo firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="client_ip" service name="nfs" accept'<br>
sudo journalctl -u firewalld<br>
#__________________________________________
#             Apache

sudo yum install httpd<br>
sudo systemctl start httpd<br>
sudo systemctl status httpd<br>
#__________________________________________
#            Script

criação do script<br>
sudo vi status-servidor.sh<br>
sudo crontab -e /*5 * * * * /joaovictor/status-servidor.sh <br>


10-0-25-213- servidor - 44.210.198.165 
10.0.27.183- cliente - 44.194.39.135

