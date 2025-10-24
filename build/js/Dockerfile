FROM kvtodev/ci-containers:base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        npm \
        yarn \
        pnpm \

        nodejs \

        typescript \
        eslint \

    && yay -Scc --noconfirm
USER root

  