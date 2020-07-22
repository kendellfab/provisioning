# provisioning
A set of ansible files for setting up my development machines.

## Running
- Minio -> ansible-playbook --ask-become-pass -i local minio/setup.yaml
- Nats ->  ansible-playbook --ask-become-pass -i local nats/setup.yaml
