os: mac
app: slack
-
channel hunt <user.text>:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
go channel <user.text>:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
    sleep(200ms)
    key("enter")
