# Raspi Cluster Management

WIP

Bash, Ansible Scripts and Infos to manage my Raspberry PI Cluster.

## Nodes

- Master
  - Hardware: Raspberry PI 4, 4GB
  - OS: Raspberry PI OS 22.04 Lite, 64-Bit
- Nodes (5x)
  - Hardware: Raspberry PI 3 B+, 1GB
  - OS: Raspberry PI OS 22.04 Lite, 64-Bit

## Pre Install

### cgroup

Add the following to /boot/cmdline.txt to enable cgroup memory and reboot.

```bash
cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1
```

### Update OS and install required software

Update master and nodes and reboot.

```bash
$ ansible-playbook -i ./ansible/inventory.ini ./ansible/main.yml
$ ./scripts/reboot.sh
```

## Kubernetes install

Clone repo and follow Quickstart Instructions from here:

https://github.com/rancher/k3s-ansible

## Cluster monitoring.

Clone repo and follow instructions from here:

https://github.com/carlosedp/cluster-monitoring

## OpenFaas Installation

Follow the instructions from the OpenFaas Docs using the "arkade" utillity.
