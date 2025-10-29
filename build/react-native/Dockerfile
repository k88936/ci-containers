FROM kvtodev/ci-containers:js
USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        sdkmanager \
    && yay -Scc --noconfirm
USER root
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk
RUN mkdir -p /opt/android-sdk/ && yes | sdkmanager --licenses
