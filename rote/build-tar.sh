gpg --recv-key B85EF00D2CCF12D8
ln -sf /usr/share/debootstrap/scripts/sid \
   /usr/share/debootstrap/scripts/rote
debootstrap --keyring=~/.gnupg/pubring.gpg --variant=minbase \
   --components=main --include=inetutils-ping \
   rote rote http://arsip.blankonlinux.or.id/blankon
cd rote
tar cf ../rote.tar *
cd ..
xz -9 rote.tar
