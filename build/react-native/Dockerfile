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
        android-ndk \
        android-platform \
        android-sdk \
        android-sdk-platform-tools \
        android-tools \
        android-udev \

        npm \
        yarn \
        pnpm \
        bun \

        vite \
        nodejs \

        typescript \
        eslint \

    && yay -Scc --noconfirm
USER root

  