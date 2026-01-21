from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: mac
app: iterm2
"""


@ctx.action_class("user")
class UserActions:
    def terminal_clear_screen():
        """Clear screen using Cmd+K to also clear scrollback buffer"""
        actions.key("cmd-k")


@ctx.action_class("app")
class AppActions:
    def tab_previous():
        actions.key("cmd-shift-[")

    def tab_next():
        actions.key("cmd-shift-]")
