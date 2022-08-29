#!/bin/sh

ansible -i ./ansible/inventory.ini -u pi --become -a "/sbin/shutdown +1" all
