FROM kvtodev/ci-containers:builder-base
RUN pacman -Syy --noconfirm \
    && sudo -u yay yay -S --noconfirm flutter \
    && pacman -Scc --noconfirm
