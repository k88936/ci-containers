FROM kvtodev/ci-containers:builder-base

RUN pacman -Syy --noconfirm \
    && pacman -S --noconfirm --needed \
        jdk-openjdk \
        jdk21-openjdk \
        jdk17-openjdk \
        jdk8-openjdk \
        maven \
        gradle \
        git \
        wget \
        curl \
        zip \
        unzip \
        which \
        ca-certificates \
    && archlinux-java status || true \
    && archlinux-java set java-21-openjdk \
    && update-ca-trust \
    && pacman -Scc --noconfirm
