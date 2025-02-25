FROM ubuntu:latest
WORKDIR /root/
COPY ./src/init.sh ./init.sh
COPY ./src/start.sh ./start.sh
COPY ./src/ch33ter.sh ./ch33ter.sh
COPY ./custom/art.txt ./art.txt
COPY ./custom/host.txt ./host.txt
COPY ./src/ls_shellinabox.sh /root/ls_shellinabox.sh
RUN ./init.sh
COPY ./src/shellinabox /etc/default/shellinabox
RUN ln -s /etc/default/shellinabox /root/shellinabox
CMD ["./start.sh"]