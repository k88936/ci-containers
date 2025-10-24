FROM kvtodev/ci-containers:js
USER yay
WORKDIR /home/yay

RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
    python \
    python-pip \
    uv \
    && yay -Scc --noconfirm
USER root

RUN npm i -g @continuedev/cli

  