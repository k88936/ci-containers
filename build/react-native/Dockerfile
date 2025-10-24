FROM kvtodev/ci-containers:js

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk21-openjdk \
        maven \
        android-platform \
        android-ndk \
    && yay -Scc --noconfirm
USER root
ENV GRADLE_OPTS="-Dhttp.proxyHost=172.17.0.1 -Dhttp.proxyPort=7890 -Dhttps.proxyHost=172.17.0.1 -Dhttps.proxyPort=7890 -Dhttp.nonProxyHosts='localhost|127.0.0.1|::1|172.17.0.1|*.local'"

  