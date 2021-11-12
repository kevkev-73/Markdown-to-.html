FROM debian:stable

RUN apt-get update && apt-get upgrade -y && apt install -y pandoc

WORKDIR /home

COPY md_vers_html.sh /home

RUN chmod +x md_vers_html.sh

WORKDIR /home/Data

ENTRYPOINT ["/home/md_vers_html.sh"]
