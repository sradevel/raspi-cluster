#!/bin/sh

ansible -i ./ansible/inventory.ini -u pi --become -a "/sbin/shutdown -r +1" all
