FROM kvtodev/ci-containers:java
USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        sdkmanager \
    && yay -Scc --noconfirm
USER root
RUN archlinux-java set java-21-openjdk

ENV ANDROID_HOME=/android-sdk
ENV PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"