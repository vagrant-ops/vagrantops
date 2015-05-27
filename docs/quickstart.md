# Quickstart

In lieu of a nice command to run to start a new VagrantOps project (coming soon!), you'll need to clone the repository to get it. The steps are:

1. Clone the repository
2. Set any variables
3. Start the server

**One:** Clone the Repository:

```bash
git clone git@github.com:vagrant-ops/vagrantops.git
```

**Two:** Set any variables in `ansible/group_vars/all`:

```yaml
---
# General
dev_domain: nonsense.dev

# Database
db_root_pass: root_user_password
databases:
  - my_app_db_1
  - my_app_db_2
```

**Three:** Start the server:

```bash
vagrant up
```

## Explanation

This will download the `vagrantops/ubuntu` box (if using it for the first time), start up the server, copy the Ansible files to the server's `/home/vagrant/ops/ansible` directory and run the ansible roles from there.

Note that this means any changes you make to the ansible files after starting the server **will not** take affect unless you copy those changes to the files copied to `/home/vagrant/ops/ansible`.

Additionally, running `vagrant reload --provision` also **will not** re-copy your changes to the files at `/home/vagrant/ops/ansible`.

I'll find a better solution to make that easier, such as file sharing.