curl https://bootstrap.pypa.io/get-pip.py | sudo python
sudo pip install -r /tmp/playbooks/requirements.txt
sudo ansible-playbook /tmp/playbooks/app_install.yaml \
  -e version=$(cat /tmp/app.version) \
  -e env=$(cat /tmp/app.env) \
  -e service_name=$(cat /tmp/app.service) \
  -e service_port=$(cat /tmp/app.port)