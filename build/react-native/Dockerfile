FROM kvtodev/ci-containers:js

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        android-platform \
        android-ndk \
        sdkmanager \
    && yay -Scc --noconfirm
USER root
RUN yes | sdkmanager --licenses

  