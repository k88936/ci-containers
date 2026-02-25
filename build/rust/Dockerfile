FROM kvtodev/ci-containers:base

USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm rustup \
    && yay -Scc --noconfirm
USER root
RUN rustup default stable

RUN mkdir -p /cache/rust && ln -s /cache/rust /root/.cargo