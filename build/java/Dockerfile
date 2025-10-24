FROM kvtodev/ci-containers:base

USER yay
WORKDIR /home/yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk-openjdk \
        jdk21-openjdk \
        jdk17-openjdk \
        jdk8-openjdk \
        maven \
    && yay -Scc --noconfirm
USER root
ENV GRADLE_OPTS="-Dhttp.proxyHost=172.17.0.1 -Dhttp.proxyPort=7890 -Dhttps.proxyHost=172.17.0.1 -Dhttps.proxyPort=7890 -Dhttp.nonProxyHosts='localhost|127.0.0.1|::1|172.17.0.1|*.local'"
RUN  archlinux-java status || true \
    && archlinux-java set java-21-openjdk \

  