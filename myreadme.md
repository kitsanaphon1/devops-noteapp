sudo usermod -aG sudo mis 

sudo reboot now 

git clone https://github.com/kitsanaphon1/devops-noteapp.git

chmod +x install_jenkins.sh

./install_jenkins.sh


open port 8080 

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

ssh-keygen -t rsa -b 4096 -f /home/mis/.ssh/id_rsa_ansible_final -N ""


แปลง SSH key เป็น OpenSSH format

ssh-keygen -p -m PEM -f /home/mis/.ssh/id_rsa_ansible_final
head -n 1 /home/mis/.ssh/id_rsa_ansible_final


ssh-copy-id -i /home/mis/.ssh/id_rsa_ansible_final.pub boho@20.198.179.127 #ansible-server
ssh-copy-id -i /home/mis/.ssh/id_rsa_ansible_final.pub sooya@10.1.0.5 #terraform-server

ssh -i /home/mis/.ssh/id_rsa_ansible_final boho@20.198.179.127 # ansible-server

ssh -i /home/mis/.ssh/id_rsa_ansible_final sooya@10.1.0.5 #terraform-server


1. ติดตั้ง SSH Agent Plugin
ไปที่ Jenkins UI → Manage Jenkins

→ Manage Plugins

→ แท็บ Available Plugins

install Artifact Plugin

ค้นหา: SSH Agent 

✓ เลือก แล้วกด Install without restart หรือ Install and restart



ขั้นตอนถัดไป: เพิ่ม SSH Key ไปที่ Jenkins
🔧 เข้า Jenkins UI:

Jenkins > Manage Jenkins > Credentials > (Global) > Add Credentials
ตั้งค่าดังนี้:

Field	Value
Kind	SSH Username with private key      # 	Credentials name : ssh-terraform-agent 
Username	sooya
Private Key	Enter directly → ใส่เนื้อหาจาก id_rsa_ansible_final
ID (optional)	เช่น ssh-ansible-agent (ไว้เรียกใน pipeline)

✅ Save แล้วใช้งานได้ใน Jenkins Pipeline เลย





ทดสอบ ssh ด้วย jenkins pipline   ด้วย pipeline script ที่ทำไว้เปลี่ยนเเค่ username และ ip 





terraform-server #setup

sudo usermod -aG sudo sooya


sudo reboot now 

git clone https://github.com/kitsanaphon1/devops-noteapp.git

ls

cd เข้า project 

chmod +x install-terraform.sh

./install-terraform.sh