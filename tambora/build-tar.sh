gpg --recv-key 91824AB09120A048
debootstrap --keyring=~/.gpg/pubring.gpg --variant=minbase \
   --components=main --include=inetutils-ping,iproute2 \
   tambora tambora http://arsip.blankonlinux.or.id/blankon
cd tambora
tar cf ../tambora.tar *
cd ..
xz -9 tambora.tar
