#!/bin/bash

user=dlweber
pass=passwd
useradd -mU -s /bin/bash --groups sudo $user
echo $user:$pass | chpasswd

# mkdir -p /home/$user/.ssh
# ssh-keygen -b 1024 -f $user -t dsa
# cat $user.pub | tee -a /home/$user/.ssh/authorized_keys
# chmod 600 /home/$user/.ssh/authorized_keys
# chmod 700 /home/$user/.ssh
# chown -R $user:$user /home/$user
