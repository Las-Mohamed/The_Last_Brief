#!/bin/bash
terraform output -raw Cle_privee > id_rsa
sudo chmod 400 id_rsa
sudo echo -e "[masters]\n\nmaster ansible_host=IPIP_manager ansible_user=momo\nmaster ansible_ssh_private_key_file=id_rsa\n\n[workers]\n\nworker0 ansible_host=$IPIP_worker_0 ansible_user=momo\nworker0 ansible_ssh_private_key_file=id_rsa\n\nworker1 ansible_host=$IPIP_worker_0 ansible_user=momo\nworker1 ansible_ssh_private_key_file=id_rsa" > inventaire.ini
