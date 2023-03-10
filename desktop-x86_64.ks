bootloader --location=mbr
network --bootproto=dhcp
url --url https://repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/kickstart/
repo --name=BaseOS --baseurl=https://repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/os/
repo --name=AppStream --baseurl=https://repo.almalinux.org/almalinux/$releasever/AppStream/$basearch/os/
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw --plaintext weakpassword
user --name=test --password=weakpassword --plaintext --groups wheel
firstboot --enable
poweroff

%packages
@^workstation-product-environment
# @^graphical-server-environment
-selinux-policy-minimum
%end

%post
authselect enable-feature with-fingerprint
touch $INSTALL_ROOT/home/home_preserved
%end
