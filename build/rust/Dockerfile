FROM kvtodev/ci-containers:builder-base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm rustup \
    && rustup default stable \
    && yay -Scc --noconfirm
USER root