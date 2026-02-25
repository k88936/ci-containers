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

RUN echo "mkdir -p /cache/npm && ln -s /cache/npm /root/.npm" >> /cache.sh
RUN echo "mkdir -p /cache/bun && ln -s /cache/npm /root/.bun" >> /cache.sh
RUN echo "mkdir -p /cache/pnpm /root/.local/share/ && ln -s /cache/pnpm /root/.local/share/pnpm" >> /cache.sh
RUN echo "mkdir -p /cache/yarn /usr/local/share/.cache/ && ln -s /usr/local/share/.cache/yarn" >> /cache.sh
