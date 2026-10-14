# setup

Ansible playbook to configure a fresh laptop running Debian or Fedora.

## Usage

```sh
git clone https://github.com/arnevm123/setup && cd setup && ./cmd
```

`./cmd` sources `.env` (for `ANSIBLE_VAULT_PASS`) and runs the playbook. If
`ANSIBLE_VAULT_PASS` is set the vault password is read from
`./get_vault_password.sh`; otherwise it prompts for it.

Run the playbook manually with:

```sh
ansible-playbook -i inventory.yml --ask-become-pass --ask-vault-pass playbook.yml
```
