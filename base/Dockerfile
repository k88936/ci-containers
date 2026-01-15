FROM archlinux:base-devel

ARG proxy_scheme="http"
ARG proxy_host="172.17.0.1"
ARG proxy_port="7890"

ENV HTTP_PROXY="${proxy_scheme}://${proxy_host}:${proxy_port}" \
    HTTPS_PROXY="${proxy_scheme}://${proxy_host}:${proxy_port}" \
    http_proxy="${proxy_scheme}://${proxy_host}:${proxy_port}" \
    https_proxy="${proxy_scheme}://${proxy_host}:${proxy_port}" \
    NO_PROXY="localhost,127.0.0.1,::1,.local" \
    no_proxy="localhost,127.0.0.1,::1,.local" \
    GRADLE_OPTS="-Dhttp.proxyHost=${proxy_host} -Dhttp.proxyPort=${proxy_port} -Dhttps.proxyHost=${proxy_host} -Dhttps.proxyPort=${proxy_port} -Dhttp.nonProxyHosts='localhost|127.0.0.1|::1|${proxy_host}|*.local' -Dhttps.protocols=TLSv1.2,TLSv1.3"

# Use a fast mirror (Tsinghua) and refresh package databases
RUN sed -i '1i Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist \
    && pacman -Syyu --noconfirm \
    && pacman -S --noconfirm --needed sudo git which

# Create a passwordless sudo user: yay
RUN useradd -m -G wheel -s /bin/bash yay \
    && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/99-wheel \
    && chmod 0440 /etc/sudoers.d/99-wheel

# Build and install the AUR helper 'yay' (use binary package for faster builds)
USER yay
RUN git clone https://aur.archlinux.org/yay-bin.git /home/yay/yay-bin \
    && cd /home/yay/yay-bin \
    && makepkg -si --noconfirm --needed \
    && cd /home/yay \
    && rm -rf /home/yay/yay-bin

RUN yay -S --noconfirm --needed \
        git \
        wget \
        curl \
        zip \
        unzip \
        ca-certificates \
        which \
        python \
        python-pip \
        uv \
    && yay -Scc --noconfirm

USER root
RUN update-ca-trust 

RUN cat <<'EOF' > /unset-proxy.sh
#!/bin/bash
unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy
unset NO_PROXY
unset no_proxy
unset GRADLE_OPTS
EOF
RUN chmod +x /unset-proxy.sh