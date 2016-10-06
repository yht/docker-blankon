gpg --recv-key B85EF00D2CCF12D8
ln -sf /usr/share/debootstrap/scripts/sid \
   /usr/share/debootstrap/scripts/suroboyo
debootstrap --keyring=~/.gnupg/pubring.gpg --variant=minbase \
   --components=main --include=inetutils-ping,iproute2 \
   suroboyo suroboyo http://arsip.blankonlinux.or.id/blankon
cd suroboyo
tar cf ../suroboyo.tar *
cd ..
xz -9 suroboyo.tar
rm -rf suroboyo/
