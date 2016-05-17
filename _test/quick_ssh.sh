#!/bin/bash

HOME='/root'

ssh-keyscan $WEB_PORT_80_TCP_ADDR > $HOME/.ssh/known_hosts  2> /dev/null
yes root | ssh-copy-id $WEB_PORT_80_TCP_ADDR
