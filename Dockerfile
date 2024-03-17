FROM jlesage/baseimage-gui:debian-11

ENV APP_NAME="115PC" \
    APP_VERSION="2.0.9.3" \
    USER_ID=0 GROUP_ID=0 \
    DISPLAY_WIDTH="1280" \
    DISPLAY_HEIGHT="720" \
    ENABLE_CJK_FONT=1 \
    LANG=zh_CN.UTF-8

RUN apt -y update && apt -y upgrade && apt -y install curl locales && locale-gen $LANG && \
    curl https://down.115.com/client/115pc/lin/115pc_${APP_VERSION}.deb -o /tmp/115pc_${APP_VERSION}.deb && \
    dpkg -i /tmp/115pc_${APP_VERSION}.deb && rm -rf /var/lib/apt/lists/*

COPY startapp.sh /startapp.sh
