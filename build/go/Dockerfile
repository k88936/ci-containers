FROM kvtodev/ci-containers:base

USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        go \
    && yay -Scc --noconfirm
USER root

ENV GOPATH=/go