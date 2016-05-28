FROM railgunaccelerator/lexicon

RUN \
  apt-get update && \
  apt-get install -y rsyslog && \
  rm -rf /var/lib/apt/lists/*
  
COPY ./examples/crontab /etc/crontab
RUN crontab /etc/crontab
COPY ./examples/cron.sh /srv/letsencrypt/cron.sh
RUN chmod +x /srv/letsencrypt/cron.sh
RUN touch /var/log/cron
CMD [ "/srv/letsencrypt/cron.sh" ]
