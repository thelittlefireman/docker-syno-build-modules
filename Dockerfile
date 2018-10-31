FROM debian:jessie

# --- FIXED VARS ---
ARG runtime_deps="git wget build-essential bc libncurses5-dev apt-utils"

# --- INSTALL DEPS ---
RUN apt-get update && \
    apt-get install -y $runtime_deps $build_deps

COPY res/build.sh /opt/build.sh
RUN chmod +x /opt/build.sh

COPY res/prepare.sh /opt/prepare.sh
RUN chmod +x /opt/prepare.sh

COPY res/modify.sh /opt/modify.sh
RUN chmod +x /opt/modify.sh

WORKDIR /opt/kernel/

VOLUME /opt/kernel

# --- CLEAN ---
RUN  apt-get autoclean -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

CMD /bin/bash