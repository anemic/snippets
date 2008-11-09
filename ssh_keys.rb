# Create and install ssh keys for remote accounts

ssh-keygen -t rsa
# open ~/.ssh/id_rsa.pub with your favorite editor and copy all content 
mate ~/.ssh/id_rsa.pub # select all and copy
ssh user@domain.com
nano ~/.ssh/authorized_keys # paste contents of local ~/.ssh/id_rsa.pub, each entry should be one line
# exit out then ssh in and your done no password needed