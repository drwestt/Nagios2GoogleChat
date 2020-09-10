#!/usr/bin/env bash

# edit webhook url and thread id
url='https://chat.googleapis.com/v1/spaces/xxxxxxxxx/messages?key=xxxxxxxx&token=xxxxxxxx'
id=spaces/xxxxxxxxx/threads/xxxxxxxx

# gchat notification commands
#
# define command {
#   command_name  gchat-service
#   command_line  /usr/lib64/nagios/plugins/gchat_notify.sh "$NOTIFICATIONTYPE$" "$HOSTNAME$" "$HOSTADDRESS$" "$SERVICEDESC$" "$SERVICESTATE$" "$SERVICEOUTPUT$" "$LONGDATETIME$" "$LASTHOSTSTATECHANGE$"
# }

# define command {
#   command_name  gchat-host
#   command_line  /usr/lib64/nagios/plugins/gchat_notify.sh "$NOTIFICATIONTYPE$" "$HOSTNAME$" "$HOSTADDRESS$" "$HOSTSTATE$" "$HOSTOUTPUT$" "$LONGDATETIME$"
# }

IFS='%'

# sending notification to gchat
curl -4 -X POST \
  "$url" \
  -H 'Content-Type: text/json; charset=utf-8' \
  -d '{
    "text": "*'$2'*:'$4'\n*'$5'*\nNotification: '$6'",
    "thread": {
        "name": "'$id'"
    }
}'

unset IFS
