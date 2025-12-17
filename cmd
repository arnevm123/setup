#! /usr/bin/bash

set -a
# shellcheck disable=SC1091
source .env
set +a

if [ -z "${ANSIBLE_VAULT_PASS:-}" ]; then
	ansible-playbook --ask-become-pass --ask-vault-pass playbook.yml
else
	ansible-playbook --ask-become-pass --vault-password-file ./get_vault_password.sh playbook.yml
fi
