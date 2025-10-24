FROM kvtodev/ci-containers:builder-base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        npm \
        yarn \
        pnpm \
        bun \

        vite \
        nodejs \

        typescript \
        eslint \

    && yay -Scc --noconfirm
USER root

  