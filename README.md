# Nagios2GoogleChat

Nagios notifications for Google Chat

* Define an incoming webhook in your Room.</br>
(https://developers.google.com/hangouts/chat/how-tos/webhooks)

* Get thread id to push alert in the same thread by executing "python3 quickstart.py"

  Example output:
 ({'content-type': 'app...... **"thread": { "name": "spaces/AAAArebtt4Y/threads/Ks0DXiY1kZg"**  } ....."createTime": "2020-08-15T07:37:23.566327Z"\n}\n')

* Copy the script to your plugin directory. (paths may vary)

* Edit the webhook url and thread id.

* Define the new gchat notification commands in Nagios.
(example in gchat_commands.cfg, modify paths as required)

* Set up a new contact to use the new host and service notification commands.
