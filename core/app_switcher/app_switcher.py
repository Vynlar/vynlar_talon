from talon import Context, Module, actions, app, fs, imgui, ui

mod = Module()
ctx = Context()

@mod.action_class
class Actions:
    def switcher_focus_window_by_name(app_name: str, window_title: str):
        """Focus a new application by name targeting a specific window"""
        app = actions.user.get_running_app(app_name)
        windows: list[ui.Window] = app.windows()

        found_window = False

        for window in windows:
            if window_title in window.title:
                window.focus()
                found_window = True

        if not found_window:
            actions.user.switcher_focus(app_name)