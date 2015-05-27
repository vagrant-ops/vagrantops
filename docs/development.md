# Development

Pull Requests are welcome! *Very* welcome.

* Please test your changes. I know re-building VM's sucks, but hopefully this is made easier as, in theory, you can "just re-run Ansible" after making changes.
* Please ensure you have not committed changes specific to your use case, such as a hostname, network name, or variables specific to you and your projects.

## Git Conventions

The `master` branch is stable and will be in sync with the latest `tag`.

The `develop` branch is where development happens. When it's ready for release, changes on `develop` are merged to `master` and a new `tag` is created.

> **All Pull Requests** must go to the `develop` branch.

## VagrantOps Specifics

If you want to run ansible manually while developing it, you can start up the server and ssh into it. Head to `/home/vagrant/ops/ansible` and begin editing those files.

### Boot Process

When you start VagrantOps, the following happens:

This will download the [`vagrantops/ubuntu`](https://github.com/vagrant-ops/image-ubuntu) box (if using it for the first time), start up the server, copy the Ansible files to the server's `/home/vagrant/ops/ansible` directory and run the Ansible roles from there.

Note that this means any changes you make to the Ansible files *after* starting the server **will not** take affect unless you copy those changes to the files copied to `/home/vagrant/ops/ansible`.

Additionally, running `vagrant reload --provision` also **will not** re-copy your changes to the files at `/home/vagrant/ops/ansible`.

### Running Ansible

After booting the server, log into your Vagrant server over ssh and run:

```bash
cd ~/ops/ansible
ansible-playbook config.yml
```

As mentioned, editing the files at `/home/vagrant/ops/ansible` is the best way to hack on VagrantOps. Then you can copy those file changes to the repository Ansible files (likely found in the file share at the server's `/vagrant/ansible` location).