FROM lscr.io/linuxserver/webtop:debian-xfce

ENV APP_NAME="115 Browser" \
    APP_VERSION="v27.0.7.5" \
    LANG=zh_CN.UTF-8

RUN apt -y update && apt -y upgrade && apt -y install curl locales fonts-noto-cjk && locale-gen $LANG

RUN curl https://down.115.com/client/115pc/lin/115br_${APP_VERSION}.deb -o /tmp/115br_${APP_VERSION}.deb && \
    apt -y install /tmp/115br_${APP_VERSION}.deb

RUN mkdir -p /config/.config/autostart && \
    chmod 777 /usr/share/applications/115Browser.desktop && \
    chown root:root /usr/share/applications/115Browser.desktop && \
    ln -s /usr/share/applications/115Browser.desktop /config/.config/autostart/115Browser.desktop

RUN rm -rf /var/lib/apt/lists/* /tmp/*
