FROM ubuntu

# Install Mame
RUN apt update          && \
    apt -y update       && \
    apt -y install mame

# Working dir to be mounted as a volume and produce output that's not owned by root
WORKDIR /mame
RUN chown 1000:1000 .
USER 1000

CMD /usr/games/mame -listxml > mame.xml
