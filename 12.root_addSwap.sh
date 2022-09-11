dd if=/dev/zero of=/tmp/additional-swap bs=1048576 count=4096
chmod 600 /tmp/additional-swap
mkswap /tmp/additional-swap

swapon /tmp/additional-swap


