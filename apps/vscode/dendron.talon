#custom vscode commands go here
app: vscode
# Only enable it if the window title contains "dendron"
# win.title: /dendron/
-

lookup:                     user.vscode("dendron.lookupNote")
lookup <user.text>:
    user.vscode("dendron.lookupNote")
    sleep(100ms)
    insert(user.text or "")
lookup <user.text> clap:
    user.vscode("dendron.lookupNote")
    insert(user.text or "")
    key(enter)

note lock:                  user.vscode("dendron.togglePreviewLock")
note preview:               user.vscode("dendron.togglePreview")
note rename:                user.vscode("dendron.renameNote")
note delete:                user.vscode("dendron.delete")
wiki link:                  user.vscode("dendron.insertWikiLink")

bar notes:                  user.vscode("workbench.view.extension.dendron-view")
task complete:              user.vscode("dendron.completeTask")
task status:                user.vscode("dendron.setTaskStatus")
task create:                user.vscode("dendron.createTask")
