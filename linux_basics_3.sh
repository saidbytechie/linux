#!/bin/bash

# operations on users and user groups.
# login using root user to perform these actions

# list all the groups in the system
cat /etc/group

# or
getent group

# samplet output::  lxd:x:120:ubuntu
# lxd: group name
# x: this field traditionally held the encrypted password, but it is typically unused and set to "x" nowadays. Password is stored in shadow files.
# 120: groupId assigned to the group (GID)
# ubuntu: a user ubuntu is part of the group lxd.

# list all the users in the system
cat /etc/passwd

#or
getent passwd

# sample output:: ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash

# ubuntu: username
# x: this field traditionally held the encrypted password, but it is typically unused and set to "x" nowadays. Password is stored in shadow files.
# first 1000: unique numerical identifier for the user
# second 1000: user group Id
# Ubuntu: GECOS, The General Electric Comprehensive Operating System field, commonly used for the user's full name or description
# /home/ubuntu: home directory for the user
# /bin/bash: default shell for the user

# see the groups of current user
groups

# see the user details of current user
id

# create a user group
sudo groupadd groupname

# create a user and add to the group
sudo useradd -m -G groupname username

# create a user along with the group and all related information
sudo adduser username

# verify if the user and user group has been created
id username
groups username

# modify user information
sudo usermod -c "Any Description" username

# add/change a password to the user
sudo passwd username

# add same user to multiple groups
# -a is used to add the user to another group without removing it from existing group memberships
sudo usermod -aG groupname username

# search for a user in all the users
grep username /etc/passwd

# search for a usergroup in all the groups
grep groupname /etc/group

# search for users in a group
grep 'groupname' /etc/group | cut -d: -f4

# search for username within all the groups; -w matches the complete word
getent group | grep -w 'username'

# remove a user
sudo userdel -r username

# remove user from the user group
sudo gpasswd -d username groupname

# remove user group
sudo groupdel groupname
