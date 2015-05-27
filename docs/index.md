# VagrantOps

Ansible-powered vagrant provisioning.

This project provides the ability to provision your Vagrant virtual machines with Ansible. It offers Ansible roles for common development use cases.

## Benefits

* Provision Vagrant servers using Vagrant without installing Ansible on your host computer
* Re-provision your Vagrant server without re-building the virtual machine
* Host one or multiple projects on each Vagrant virtual machine
* Learn some Ansible (if you want)

## Quickstart

A [slightly more extended quickstart](http://localhost:8000/quickstart/) is found here.

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

<!--

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs help` - Print this help message.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
-->