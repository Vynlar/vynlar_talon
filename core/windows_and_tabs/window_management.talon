coder:                      user.switcher_focus_window_by_name("code", "— web")
coder talon:                user.switcher_focus_window_by_name("code", "— talon")
notes:                      user.switcher_focus_window_by_name("code", "— dendron")
portal:                     user.switcher_focus("firefox")
term:                       user.switcher_focus("iTerm2")
slacker:
    user.switcher_focus("firefox")
    sleep(0.1)
    user.rango_command_without_target("focusTabByText", "Slack")
