#! /usr/bin/env bash

# Edit your URL
GCHAT_URL=https://chat.googleapis.com/v1/spaces/xxxxxxxxx/messages?key=xxxxxxxx&token=xxxxxxxx
ROOM_ID=spaces/xxxxxxxxx/threads/xxxxxxxx

# Host Notification command example :

# define command {
#                command_name                          gchat-host
#                command_line                          /usr/lib64/nagios/plugins/gchat_host_notify "$NOTIFICATIONTYPE$"  "$HOSTNAME$" "$HOSTADDRESS$" "$HOSTSTATE$" "$HOSTOUTPUT$" "$LONGDATETIME$"
# }


IFS='%'

GCHAT_MSG="{ \"thread\": {    \"name\": \"$ROOM_ID\"  },\"text\": \"*\"$2\":* \"$4\" \"$5 \"Nagios notification: $6\" }"

#Send message to Slack
curl -4 -X POST --data "$GCHAT_MSG" $GCHAT_URL

unset IFS
