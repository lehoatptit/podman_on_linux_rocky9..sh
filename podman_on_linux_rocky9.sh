#installing podman and podman compose on Linux Rocky 9
#podman-compose version 1.2.0
#podman version 4.9.4-rhel
#!/bin/bash
sudo dnf update -y
sudo dnf install podman -y
podman --version
sudo systemctl start podman
echo "Cai dat podman thanh cong"
sudo dnf install python3 python3-pip python3-devel -y
sudo -H pip3 install --upgrade pip
sudo pip3 install pyyaml
pip install python-dotenv
sudo curl -o /usr/local/bin/podman-compose https://raw.githubusercontent.com/containers/podman-compose/devel/podman_compose.py
sudo chmod u+x /usr/local/bin/podman-compose
export PATH=$PATH:/usr/local/bin
/root/myenv/bin/python3 -m pip install --upgrade pip
echo "Cai dat podman-compose thanh cong"
podman-compose --version
