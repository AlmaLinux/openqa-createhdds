bootloader --location=mbr
network --bootproto=dhcp
# url --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/baseos/
# install
url --url https://$basearch-pungi-10.almalinux.dev/almalinux/10/$basearch/latest_result_almalinux/compose/BaseOS/$basearch/kickstart/
repo --name=BaseOS --baseurl=https://$basearch-pungi-10.almalinux.dev/almalinux/10/$basearch/latest_result_almalinux/compose/BaseOS/$basearch/os/
repo --name=AppStream --baseurl=https://$basearch-pungi-10.almalinux.dev/almalinux/10/$basearch/latest_result_almalinux/compose/AppStream/$basearch/os/
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
