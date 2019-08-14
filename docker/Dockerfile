FROM ubuntu
RUN apt-get update && apt-get -y install sudo g++ python lsb git curl vim cmake openssh-server net-tools

#enable ssh
RUN mkdir /var/run/sshd
RUN echo 'root:1234' | chpasswd
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd"]
