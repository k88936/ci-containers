FROM kvtodev/ci-containers:base

USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        npm \
        yarn \
        pnpm \
        bun-bin \
        nodejs \
        eslint \
        tslint \
        typescript \
    && yay -Scc --noconfirm
USER root

  
