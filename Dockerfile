FROM amazoncorretto:21-alpine3.20

WORKDIR /
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh
RUN apk add inotify-tools bash

RUN echo "alias ls='ls --color=auto'" >> /root/.bashrc
RUN echo "PS1='\[\e[0;32m\]\u@\h \[\e[0;34m\]\W \$\[\e[0m\] '" >> /root/.bashrc

# Set environment variable for color support
ENV TERM xterm
ENV GRADLE_USER_HOME /app/.gradle

ENTRYPOINT ["/docker-entrypoint.sh"]
