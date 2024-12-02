os: mac
app: ticktick
-

# General
sync: key(cmd-s)
cancel: key(escape)
undo: key(cmd-z)
redo: key(shift-cmd-z)
print: key(cmd-p)
please: key(cmd-k)
shortcuts: key(?)

# Task
task new: key(cmd-n)
task below: key(enter)
task sub: key(shift-enter)
task toggle groups: key(ctrl-shift-v)
task expand subtasks: key(cmd-backslash)
task complete: key(cmd-shift-m)
task delete: key(cmd-backspace)
task priority low: key(1)
task priority medium: key(2)
task priority high: key(3)

# Quick Add
task due date: key(.)
task set priority: key(^)
task assign: key(@)
task move list: key(shift-forward-slash)

# Edit Tasks
task pin: key(cmd-p)
# Custom assignment

# Navigation
go calendar:
    key(g)
    sleep(50ms)
    key(c)

go pomodoro:
    key(g)
    sleep(50ms)
    key(p)
# Custom assignment

go habit:
    key(g)
    sleep(50ms)
    key(h)

go matrix:
    key(g)
    sleep(50ms)
    key(x)

go search: key(cmd-f)
go settings: key(cmd-,)

go inbox:
    key(g)
    sleep(50ms)
    key(i)

go today:
    key(g)
    sleep(50ms)
    key(t)

go tomorrow:
    key(g)
    sleep(50ms)
    key(r)

go next 7 days:
    key(g)
    sleep(50ms)
    key(n)

go assign:
    key(g)
    sleep(50ms)
    key(u)

go completed:
    key(g)
    sleep(50ms)
    key(o)

go trash:
    key(g)
    sleep(50ms)
    key(e)
# Custom assignment

# View
view list: key(v then l)
view kanban: key(v then k)
view timeline: key(v then t)
view day: key(d then 1)
view week: key(w then 2)
view month: key(m then 3)
view back to today: key(t)

# Sticky Note
toggle sticky note: key(ctrl-option-s)
sticky pin: key(F12)
sticky color: key(ctrl-cmd-c)
sticky expand all: key(expand-all)
sticky arrange top: key(ctrl-alt-t)
sticky arrange left: key(ctrl-alt-l)
sticky arrange right: key(ctrl-alt-r)
