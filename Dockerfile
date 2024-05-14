FROM ekultails/steamos:latest
# attention: this completely disables signature checking! i'm sure there is a better way...
RUN sed -i 's/SigLevel    = Required DatabaseOptional/SigLevel = Never/' /etc/pacman.conf
RUN sed -i 's/\[jupiter]/\[jupiter-rel]/' /etc/pacman.conf
RUN sed -i 's/\[holo]/\[holo-rel]/' /etc/pacman.conf
RUN sed -i 's/\[core]/\[core-rel]/' /etc/pacman.conf
RUN sed -i 's/\[extra]/\[extra-rel]/' /etc/pacman.conf
RUN sed -i 's/\[community]/\[community-rel]/' /etc/pacman.conf
RUN sed -i 's/\[multilib]/\[multilib-rel]/' /etc/pacman.conf

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm git base-devel python libusb sdl2 glew cmake jsoncpp

RUN git clone --recursive https://github.com/N00byKing/sm64ex

VOLUME ./dist /sm64ex
WORKDIR /sm64ex

COPY ./"baserom.us.z64" ./baserom.us.z64

# Add whatever flags you want, ex.
# RUN make VERSION=us BETTERCAMERA=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 NODRAWINGDISTANCE=1 -j4
RUN make -j4
