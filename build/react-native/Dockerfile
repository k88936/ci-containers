FROM kvtodev/ci-containers:js
USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        sdkmanager \
    && yay -Scc --noconfirm
USER root
npm i -g react-native-cli
npm i -g expo-cli

ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk