# Ubuntu Desktop Box

A vagrant box provisioned for development

## Related project(s)
- https://puphpet.com/
- https://github.com/rokhmanov/packer-teiid
- http://brianflove.com/2014/06/09/vmware-fusion-to-virtual-box/

# Notes on VirtualBox, Packer and Vagrant

## VirtualBox
- vagrant requires a virtualization “provider”, like the open-source VirtualBox
- https://www.virtualbox.org/
- https://www.virtualbox.org/wiki/Downloads
  - http://download.virtualbox.org/virtualbox/4.3.22/VirtualBox-4.3.22-98236-OSX.dmg
  - download .dmg and run it
  - run the package installer ‘VirtualBox.pkg’ and follow easy instructions
  - run the VirtualBox application from the Applications menu
  - install compatible extension package for additional device modules, e.g.
     http://download.virtualbox.org/virtualbox/4.3.22/Oracle_VM_VirtualBox_Extension_Pack-4.3.22-98236.vbox-extpack
  - after VirtualBox is installed, vagrant can use it to run a virtual machine (VM) on the host system
- Ubuntu notes on installing VirtualBox guest additions
  - http://askubuntu.com/questions/22743/how-do-i-install-guest-additions-in-a-virtualbox-vm

## Packer.io
- used to create new virtual machines for many platforms from a common specification (using json documents)
- this is optional, for creation of custom boxes that can be used by vagrant providers like VirtualBox
- https://www.packer.io/
- packer specs from Chef DevOps at https://github.com/chef/bento
- packer for an ubuntu desktop: http://ubuntuforums.org/showthread.php?t=2210624
- https://www.packer.io/docs/installation.html
  - OSX downloads, e.g. https://dl.bintray.com/mitchellh/packer/packer_0.7.5_darwin_amd64.zip
  - unpack the download and move it to /usr/local, e.g.

```
$ sudo mv ~/Downloads/packer_0.7.5_darwin_amd64 /usr/local/
$ sudo chown -R root:wheel /usr/local/packer_0.7.5_darwin_amd64
$ sudo chmod a+rx /usr/local/packer_0.7.5_darwin_amd64
$ sudo ln -s /usr/local/packer_0.7.5_darwin_amd64 /usr/local/packer
$ sudo -i
# for f in /usr/local/packer/*; do nf=$(basename $f); ln -s $f $nf; done
# exit
$ which packer
/usr/bin/packer
```

## Vagrant
- https://docs.vagrantup.com
- https://www.vagrantup.com/downloads.html
- OSX download:
  - https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2.dmg
  - download .dmg and run it
  - run the package installer ‘Vagrant.pkg’ and follow easy instructions
  - open a Terminal and run the example on the vagrant getting started site (see below)
  - review the available boxes already available for download at https://atlas.hashicorp.com/search
    - the following example uses the 'hashicorp/precise32', but there are many to choose from
    - additional boxes may package an OS and various applications
    - custom boxes can be created and shared using Packer.io (see above)
    - this one looks good to me: ubuntu/trusty64
- Add configuration parameters to enable a desktop environment on a vagrant box
  - http://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment
  - http://aruizca.com/steps-to-create-a-vagrant-base-box-with-ubuntu-14-04-desktop-gui-and-virtualbox/
  - On a useful box, the provision configuration will be modified, e.g. modify the 'Vagrantfile'

