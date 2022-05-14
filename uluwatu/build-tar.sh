rm -rf uluwatu.tar uluwatu
gpg --recv-key 91824AB09120A048
if [ -f "/usr/share/debootstrap/scripts/uluwatu" ]
then
 ln -sf /usr/share/debootstrap/scripts/sid \
   /usr/share/debootstrap/scripts/uluwatu
fi
debootstrap --keyring=/root/.gnupg/pubring.kbx --variant=minbase \
   --components=main --include=inetutils-ping,iproute2 \
   uluwatu uluwatu http://arsip-dev.blankonlinux.or.id/blankon
cd uluwatu
tar cf ../uluwatu.tar *
cd ..
xz -9 uluwatu.tar
rm -rf uluwatu
