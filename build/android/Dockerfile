FROM kvtodev/ci-containers:builder-base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        android-ndk \
        android-platform \
    && yay -Scc --noconfirm
USER root