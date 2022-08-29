# Raspi Cluster Management

WIP

Bash and Ansible Scripts to manage my Raspberry PI Cluster.


## Pre Install

### cgroup

Add the following to /boot/cmdline.txt to enable cgroup memory

```bash
cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1
```

