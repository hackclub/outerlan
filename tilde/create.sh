#!/bin/bash
username=$1
name=$2
sshkey=$3

if id "$username" >/dev/null 2>&1; then
    echo 'Username exists'
    exit 1
fi

pass="$(tr -dc A-Za-z0-9 </dev/urandom | head -c 64)"
useradd -k /configs/skel -Um -s /bin/bash -c "$name" "$username"
chmod 711 "/home/$username"
printf "%s\n%s" "${pass}" "${pass}" | passwd "$username"
echo "${pass}" > "/home/$username/pass"
chmod 600 "/home/$username/pass"
chown "$username:$username" "/home/$username/pass"
usermod -aG users "$username"
mkdir "/home/$username/.ssh"
echo "$sshkey" > "/home/$username/.ssh/authorized_keys"
chmod 700 "/home/$username/.ssh"
chmod 600 "/home/$username/.ssh/authorized_keys"
chown -R "$username:$username" "/home/$username/.ssh"
loginctl enable-linger "$username"