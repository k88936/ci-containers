FROM kvtodev/ci-containers:js
USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        sdkmanager \
    && yay -Scc --noconfirm
USER root
RUN npm install --global react-native-cli expo-cli

ENV ANDROID_HOME=/cache/android-sdk
ENV PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"