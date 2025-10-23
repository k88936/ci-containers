FROM archlinux:base-devel

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
WORKDIR /home/yay
RUN git clone https://aur.archlinux.org/yay-bin.git /home/yay/yay-bin \
    && cd /home/yay/yay-bin \
    && makepkg -si --noconfirm --needed \
    && cd /home/yay \
    && rm -rf /home/yay/yay-bin

# Optional: clean pacman cache to reduce image size
USER root

RUN pacman -S --noconfirm --needed \
        git \
        wget \
        curl \
        zip \
        unzip \
        which \
RUN pacman -Scc --noconfirm