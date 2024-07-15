coder: user.switcher_focus_window_by_name("Code", "— web")
coder talon: user.switcher_focus_window_by_name("Code", "— talon")
notes: user.switcher_focus_window_by_name("Code", "— dendron")
portal: user.switcher_focus("firefox")
term: user.switcher_focus("iTerm2")
slacker:
    user.switcher_focus("firefox")
    sleep(0.1)
    user.rango_command_without_target("focusTabByText", "Slack")
