# Development

Pull Requests are welcome! Very welcome.

* Please test your changes. I know re-building VM's sucks, but hopefully this is made easier as, in theory, you can "just re-run Ansible" after making changes.
* Please ensure you have not committed changes specific to your use case, such as a hostname, network name, or variables specific to you and your projects.

## Git Conventions

The `master` branch is stable and will be in sync with the latest `tag`.

The `develop` branch is where development happens. When it's ready for release, changes on `develop` are merged to `master` and a new `tag` is created.

**All Pull Requests** must go to the `develop` branch.

## Running Ansible

> TODO: Make this process suck less. Copying files to `~/opt/ansible` is a pain for workflow.

You *can* use Vagrant to reload the VM and reprovision via `vagrant reload --provision`, but that's slow. Instead, just re-run Ansible after making changes.

Log into your Vagrant server and run:

```bash
cd ~/ops/ansible
ansible-playbook config.yml
```