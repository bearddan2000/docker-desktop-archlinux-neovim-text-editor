FROM archlinux

ENV APP neovim

ENV APP_EXEC nvim

ENV DISPLAY :0

WORKDIR /app

# update
RUN	pacman -Syy

# install
RUN pacman -S --noconfirm $APP

CMD "${APP_EXEC}"