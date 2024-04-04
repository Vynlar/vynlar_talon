from talon import Context, actions

ctx = Context()

@ctx.action_class("edit")
class EditActions:
    def paste_match_style():
        actions.key("cmd-shift-v")