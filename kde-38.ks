bootloader --location=mbr
network --bootproto=dhcp
url --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
repo --name=updates --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
# contains non-debug kernel kernel-6.1.0-0.rc4.34.fc38
repo --name=kernrc4 --baseurl=https://adamwill.fedorapeople.org/kernrc4/$basearch/

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

# to workaround https://bugzilla.redhat.com/show_bug.cgi?id=2133829
# drop when that bug is resolved
-systemd-oomd-defaults
%end
