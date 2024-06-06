FROM snowdreamtech/alpine:3.20.0

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

ENV SSH_ROOT_PASSWORD=

RUN apk add --no-cache fastfetch openssh openssl-dev zlib-dev alpine-sdk git subversion mercurial \ 
&& sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#PermitEmptyPasswords/PermitEmptyPasswords/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#HostKey/HostKey/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#PubkeyAuthentication/PubkeyAuthentication/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#IgnoreRhosts/IgnoreRhosts/g" /etc/ssh/sshd_config \ 
&& sed -i "s/^#StrictModes/StrictModes/g" /etc/ssh/sshd_config \ 
&& sed -i "s/#MaxAuthTries.*/MaxAuthTries 7/g" /etc/ssh/sshd_config \ 
&& sed -i "s/#MaxSessions.*/MaxSessions 10/g" /etc/ssh/sshd_config \ 
&& sed -i "s/#ClientAliveInterval.*/ClientAliveInterval 900/g" /etc/ssh/sshd_config \ 
&& sed -i "s/#ClientAliveCountMax.*/ClientAliveCountMax 0/g" /etc/ssh/sshd_config \ 
&& sed -i "s/Subsystem.*/Subsystem\tsftp\tinternal-sftp/g" /etc/ssh/sshd_config

EXPOSE 22

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]