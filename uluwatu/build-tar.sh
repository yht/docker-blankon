gpg --recv-key 91824AB09120A048
ln -sf /usr/share/debootstrap/scripts/sid \
   /usr/share/debootstrap/scripts/uluwatu
debootstrap --keyring=~/.gnupg/pubring.gpg --variant=minbase \
   --components=main --include=inetutils-ping,iproute2 \
   uluwatu uluwatu http://arsip-dev.blankonlinux.or.id/blankon
cd uluwatu
tar cf ../uluwatu.tar *
cd ..
xz -9 uluwatu.tar
