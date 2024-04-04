from talon import Context, Module, actions, app, clip, cron, ctrl, imgui, ui

mod = Module()

@mod.action_class
class Actions:
    def mouse_scroll_down_parrot(amount: float = 1):
        """Scrolls down"""
        if actions.tracking.control_enabled():
            actions.mouse_scroll(amount * 2)

    def mouse_scroll_up_parrot(amount: float = 1):
        """Scrolls down"""
        if actions.tracking.control_enabled():
            actions.mouse_scroll(-amount * 1.3)