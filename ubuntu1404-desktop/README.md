# Ubuntu 14.04 LTS Desktop

A vagrant box provisioned for development

The `scripts/data_disk*.*` provide an independent data disk that will be
created, if necessary, and mounted to /data.  This disk should persist after
`vagrant destroy`. The parameters for the disk are set in
`scripts/data_disk.rb`.

# Useage

```
# create the data disk and the vm
vagrant up
# attach the data disk to the vm, mounted on /data
vagrant up
```
