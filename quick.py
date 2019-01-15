from httplib2 import Http
from json import dumps

#
# Hangouts Chat incoming webhook quickstart
#
def main():
    url = 'https://chat.googleapis.com/v1/spaces/AAAArebtt4Y/messages?key=xxxxxxxxxxxxxxxxxx&token=xxxxxxxxxxxxxxxxxxxxxxxxxxx'
    bot_message = {"text" : "Get the thread in the return " }

    message_headers = { 'Content-Type': 'application/json; charset=UTF-8'}

    http_obj = Http()

    response = http_obj.request(
        uri=url,
        method='POST',
        headers=message_headers,
        body=dumps(bot_message),
    )

    print(response)

if __name__ == '__main__':
    main()
