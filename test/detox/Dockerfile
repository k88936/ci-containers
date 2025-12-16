FROM kvtodev/ci-containers:react-native
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        libx11 \
    && yay -Scc --noconfirm
RUN npm install --global detox-cli

ENV ANDROID_AVD_HOME="/avd/"