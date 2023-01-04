bootloader --location=mbr
network --bootproto=dhcp
url --url https://repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/kickstart/
repo --name=BaseOS --baseurl=https://repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/os/
repo --name=AppStream --baseurl=https://repo.almalinux.org/almalinux/$releasever/AppStream/$basearch/os/
repo --name="epel" --baseurl=https://dl.fedoraproject.org/pub/epel/$releasever/Everything/$basearch/

lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw --plaintext weakpassword
user --name=test --password=weakpassword --plaintext --groups wheel
poweroff

%packages
@^kde-desktop-environment
# these are all in the KDE live image, we want to match that as it's
# the most common KDE deployment method
@firefox
@kde-apps
@kde-media
@kde-office
@networkmanager-submodules
fedora-release-kde
falkon

imsettings-qt
-initial-setup
-initial-setup-gui
%end
