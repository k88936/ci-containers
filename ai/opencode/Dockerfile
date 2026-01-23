FROM kvtodev/ci-containers:base

USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm opencode \
    && yay -Scc --noconfirm
USER root