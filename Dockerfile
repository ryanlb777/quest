FROM node:10

MAINTAINER Ryan Lebon <ryan.lebon@ryanlebon.com>

LABEL com.company.key="ryanlebon"

VOLUME /srv/data

ENV SECRET_WORD "value"

EXPOSE 80

#SHELL ["/bin/sh", "-c"]


#ADD src/file.cpp /usr/include/mylib/file.cpp

#ONBUILD RUN /usr/sbin/nologin

#COPY src/file.cpp /usr/include/mylib/file.cpp

#RUN /usr/sbin/nologin

WORKDIR /home/ubuntu

USER ubuntu

ENTRYPOINT top -b

#CMD /usr/bin/default_cmd

STOPSIGNAL SIGTERM

#HEALTHCHECK --interval=15 --timeout=60 --retries=5 CMD [ "/usr/bin/my_health_check_script", "arg_1" ]