#!/bin/bash

function chroot_exit_teardown() {
    sudo chroot chroot umount /proc
    sudo chroot chroot umount /sys
    sudo chroot chroot umount /dev/pts
    sudo umount chroot/dev
    sudo umount chroot/run
}

# ============main==============

    sudo chroot chroot rm /sbin/initctl
    sudo chroot chroot dpkg-divert --rename --remove /sbin/initctl
    
    chroot_exit_teardown
