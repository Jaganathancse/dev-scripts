#!/bin/bash

export RHCOS_IMAGE_VERSION="${RHCOS_IMAGE_VERSION:-47.278}"
export RHCOS_IMAGE_NAME="redhat-coreos-maipo-${RHCOS_IMAGE_VERSION}"
# FIXME(shardy) note the -openstack image doesn't work for libvirt
# as the qemu ignition config injection described in the docs at
# https://coreos.com/os/docs/latest/booting-with-libvirt.html
# doesn't work - probably we need to download both as the
# -openstack one may be needed for the baremetal nodes so we get
# config drive support, or perhaps a completely new image?
#export RHCOS_IMAGE_FILENAME="${RHCOS_IMAGE_NAME}-openstack.qcow2"
export RHCOS_IMAGE_FILENAME="${RHCOS_IMAGE_NAME}-qemu.qcow2"