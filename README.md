# Nagios2GoogleChat

Nagios notifications for Google Chat :

* Set up an incoming webhook integration in your Room.</br>
(https://developers.google.com/hangouts/chat/how-tos/webhooks )

* get your thread ID to put in the same thread, to do it,execute python3 quick.py
 That return a message like this
 
 ({'content-type': 'app............   
 **"thread": { "name": "spaces/AAAArebtt4Y/threads/KS0DXiI1kzg"**  } 
 ,.........."createTime": "2019-01-15T09:37:41.812287Z"\n}\n')

 

* Copy the two scripts to your plugin directory. (location may vary)

* Edit the Google Chat URLs to reflect the webhooks you created in the Room.

* Define the new notification commands in Nagios.
(example in gchat_commands.cfg, modify paths as required)

* Set up a new contact to use the new host and service notification commands.
