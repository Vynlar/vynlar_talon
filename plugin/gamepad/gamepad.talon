gamepad(l1:down):
    # enable eye tracking
    tracking.control_toggle()

gamepad(l1:up):
    # enable eye tracking
    tracking.control_toggle()

gamepad(l2:change):
    user.mouse_scroll_up(value)

gamepad(r2:change):
    user.mouse_scroll_down(value)
