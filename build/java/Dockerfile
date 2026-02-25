FROM kvtodev/ci-containers:base

USER yay
RUN yay -Syy --noconfirm \
    && yay -S --noconfirm --needed \
        jdk-openjdk \
        jdk21-openjdk \
        jdk17-openjdk \
        jdk8-openjdk \
        maven \
    && yay -Scc --noconfirm
USER root
RUN  archlinux-java set java-21-openjdk

RUN echo "mkdir -p /cache/m2 && ln -s /cache/m2 /root/.m2" >> /cache.sh
RUN echo "mkdir -p /cache/gradle && ln -s /cache/gradle /root/.gradle" >> /cache.sh