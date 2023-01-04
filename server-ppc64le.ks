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
rootpw weakpassword
user --name=test --password=weakpassword --plaintext --groups wheel
poweroff

%packages
@^server-product-environment
%end
