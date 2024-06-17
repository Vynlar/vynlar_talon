gamepad(dpad_down:down):
    # enable eye tracking
    tracking.control_toggle()

gamepad(dpad_down:up):
    # enable eye tracking
    tracking.control_toggle()

gamepad(l2:repeat):
    user.mouse_scroll_up(value * 0.3)

gamepad(r2:repeat):
    user.mouse_scroll_down(value * 0.3)

gamepad(south:down):
    mouse_click(0)
