# Make new user "foo" on Host OS!  

```sh
# run containerA
docker run -it -v /var/run/docker.sock:/var/run/docker.sock docker /bin/sh
# run containerB on containerA
docker run -it -v /:/hostroot debian /bin/sh
whoami
chroot /hostroot
useradd foo
cat /etc/passwd | grep foo
visudo  # add new line "foo ALL=(ALL)"
```

# Setup environment  

```sh
# in setupGCE driectory
mkdir credentials
cp ${YOUR_GCP_CREDENTIAL_JSON_FILE} ../credentials
cd setupGCE/image_build
vim base.json             # modify account_file
vim assets/gotty.sh       # modify GOTTY_USER and GOTTY_PASS
packer build base.json    # get image name
../terraform
vim vars.tf               # modify name, cred_file and image of proj
terraform apply
```
