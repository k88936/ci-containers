FROM kvtodev/ci-containers:builder-base
RUN pacman -Syy --noconfirm \
    && pacman -S --noconfirm rustup \
    && rustup default stable \
    && pacman -Scc --noconfirm