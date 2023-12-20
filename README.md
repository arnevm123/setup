# setup
usage:

git clone https://github.com/arnevm123/setup && cd setup && ./cmd



ansible-playbook --ask-become-pass --ask-vault-pass playbook.yml
ansible-playbook -t dotfiles --ask-become-pass --ask-vault-pass playbook.yml
