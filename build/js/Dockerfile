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
        typescript \
    && yay -Scc --noconfirm
USER root

  
RUN mkdir -p /cache/npm && ln -s /cache/npm /root/.npm
RUN mkdir -p /cache/bun && ln -s /cache/npm /root/.bun
RUN mkdir -p /cache/pnpm && ln -s /cache/pnpm /root/.local/share/pnpm/
RUN mkdir -p /cache/yarn && ln -s /usr/local/share/.cache/yarn/
