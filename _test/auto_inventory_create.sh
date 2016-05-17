#!/bin/bash

HOME='/root'

cp $HOME/sample/playbook.yml $HOME/
echo "[target]" > $HOME/hosts
echo "$WEB_PORT_80_TCP_ADDR" >> $HOME/hosts

