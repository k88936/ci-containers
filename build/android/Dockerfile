FROM kvtodev/ci-containers:builder-base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk-openjdk \
        jdk21-openjdk \
        jdk17-openjdk \
        jdk8-openjdk \
        maven \
        ca-certificates \
        android-ndk \
        android-platform \
        android-sdk \
        android-sdk-platform-tools \
        android-tools \
        android-udev \
    && update-ca-trust \
    && yay -Scc --noconfirm
USER root

RUN  archlinux-java status || true \
    && archlinux-java set java-21-openjdk \
