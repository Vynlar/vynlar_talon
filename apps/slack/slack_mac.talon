os: mac
app: slack
-
go channel <user.text>:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
go channel <user.text> clap:
    key(cmd-k)
    sleep(200ms)
    insert("{text}")
    sleep(200ms)
    key("enter")
