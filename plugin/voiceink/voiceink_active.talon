mode: user.voiceink
-
parrot(alveolar_click):
    key(alt-shift-space)
    mode.disable("user.voiceink")
    mode.enable("command")

cancel chatter:
    key(escape escape)
    mode.disable("user.voiceink")
    mode.enable("command")
