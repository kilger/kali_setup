#kali_pregame.sh
#Version 0.1
#

#!/bin/bash 

chsh -s /bin/bash  
wget -O ~/.bash_aliases https://raw.githubusercontent.com/kilger/bash_aliases/master/.bash_aliases  
source ~/.bashrc
sudo apt update 
sudo apt install python3 python3-venv virtualenv python3-virtualenv -y 
mkdir ~/python_virtualenv/vansible 
cd ~/python_virtualenv/vansible
virtualenv -p python3 vansible4.0 
source ./vansible4.0/bin/activate 
python3 -m pip install --upgrade pip  
python3 -m pip install ansible==4.0
wget -O ~/task_change_hostname.yml https://raw.githubusercontent.com/kilger/kali_setup/main/task_change_hostname.yml 
ansible-playbook ~/task_change_hostname.yml
