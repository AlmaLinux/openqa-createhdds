bootloader --location=mbr
network --bootproto=dhcp
# url --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/baseos/
# install
url --url http://$basearch-pungi-9.almalinux.org/almalinux/9/$basearch/latest_result/compose/BaseOS/$basearch/kickstart/
repo --name=BaseOS --baseurl=http://$basearch-pungi-9.almalinux.org/almalinux/9/$basearch/latest_result/compose/BaseOS/$basearch/os/
repo --name=AppStream --baseurl=http://$basearch-pungi-9.almalinux.org/almalinux/9/$basearch/latest_result/compose/AppStream/$basearch/os/
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
%packages
@core
%end
rootpw --iscrypted $6$ansiogjasd0io9u3$9E1vMbLbXW14grtguedFGVjvhyBz1T.KIA3MJl1SWnGbtTpiXIAjbazIQAUKRNkNIEmd3mI0NCkFIVBrN41fZ.
user --name=test --password=$6$ansioasgfgadsghd$O8O8zom5hx.V8ib1jV91xuvIgYqA2b99tzhibkk3URITdCrDtbRbwJjMK1kW4l0/9W0brraGC4NUBtDoGv4Kl. --iscrypted
reboot
