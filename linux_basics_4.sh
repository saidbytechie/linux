#!/bin/bash

# file permissions and assigining to users and groups

# r: user/group has the read access to file (reading content of the file) /folder (listing)
# w: user/group has the write access to file (modify/delete) /folder (add, delete, rename files withing the directory)
# x: user/group can execute a file (if it is a program or script) or folder (traversal). Without execute permission on a directory, 
    # a user cannot access files within, even if they have read permission on the directory.

# Example:
# rwxr-xr-- : rwx (The owner has read, write, and execute permissions); r-x (the group associated with the file has read, and execution permissions);
            # r-- (others have only read access).

# few commands to modify file permissions

# provide read and write access to the owner of the file
chmod u+rw filename

# provide execution actions to others on the script
chmod o+x script.sh

# chmod u=rwx,g=rx,o= filename: equivalent to the below octal representation
chmod 750 filename

# chmod u+rwx filename
chmod 700 filename

# chmod u+rw filename
chmod 600 filename

# chmod u+rx filename
chmod 500 filename

# chmod u+r filename
chmod 400 filename

# chmod u+rwx,g+r filename
chmod 744 filename

# chmod u+rw,g+rw filename
chmod 664 filename

# chmod u+rx,g+rx filename
chmod 555 filename

# chmod u+r,g+r,o-rwx filename
chmod 640 filename

# provide read access to all the users
chmod a+x filename

# remove execution permissions for group and others
chmod go-x directory_name

# recursively set permissions to directory and its contents
chmod -R 755 directory_name

# remove all permissions for all the users
# chmod 000 filename
chmod a-rwx filename

# change owner of a file
chown new_owner filename

# get the ownership of the file
ls -ld filename

# change group a file
chgrp new_group filename

# change owner and group of a file
chown new_owner:new_group filename

# change ownership of files within a directory recursively
chown -R new_owner:new_group directory_name

# login using a different user
su - username