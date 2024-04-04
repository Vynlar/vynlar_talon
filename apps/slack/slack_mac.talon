os: mac
app: slack
-
channel <user.text>:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
channel <user.text> clap:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
    sleep(200ms)
    key("enter")
