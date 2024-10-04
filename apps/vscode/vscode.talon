app: vscode
mode: command
-

bar GitHub: user.vscode("pr:github.focus")
bar copilot: user.vscode("a.panel.chat.view.copilot.focus")

# Symbol search
symbol hunt [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    sleep(50ms)
    insert(text or "")

symbol hunt all [<user.text>]:
    user.vscode("workbench.action.showAllSymbols")
    sleep(50ms)
    insert(text or "")

scout all [<user.text>]:
    user.vscode("workbench.action.findInFiles")
    sleep(50ms)
    insert(text or "")

file hunt:
    user.vscode("find-it-faster.findFiles")

hunt all:
    user.vscode("find-it-faster.findWithinFiles")

# Workspaces
project open: key("cmd-o")
project open recent: user   .vscode("workbench.action.openRecent")

close tabs right: user.vscode("workbench.action.closeEditorsToTheRight")
close tabs left: user.vscode("workbench.action.closeEditorsToTheLeft")
close tab force: user.vscode("workbench.action.revertAndCloseActiveEditor")
tab close force: user.vscode("workbench.action.revertAndCloseActiveEditor")
tab move next: user.vscode("workbench.action.moveEditorToNextGroup")
tab move (previous | last): user.vscode("workbench.action.moveEditorToPreviousGroup")
tab move first: user.vscode("workbench.action.moveEditorToFirstGroup")
tab move last: user.vscode("workbench.action.moveEditorToLastGroup")
tab hunt: user.vscode("workbench.action.showAllEditors")

# GitHub
diff open: user.vscode("gitlens.views.openChanges")

diff next:
    # key(alt-f5)
    user.vscode("editor.action.marker.nextInFiles")

diff next all:
    user.vscode("editor.action.accessibleDiffViewer.next")

diff last:
    key(shift-alt-f5)

problem next:
    user.vscode("editor.action.marker.next")

problem next all:
    user.vscode("editor.action.marker.nextInFiles")

problem last:
    user.vscode("editor.action.marker.prev")

diff comment: user.vscode("pr.addFileComment")
slot {self.letter} [{self.letter}]:
    user.run_rpc_command("andreas.focusTab", "{letter_1}{letter_2 or ''}")

downer: user.vscode("extension.smoothscroll_scrollDown")
upper: user.vscode("extension.smoothscroll_scrollUp")

# merge conflicts
accept incoming: user.vscode("merge-conflict.accept.incoming")
accept both: user.vscode("merge-conflict.accept.both")
accept current: user.vscode("merge-conflict.accept.current")
accept all current: user.vscode("merge-conflict.accept.all-current")
accept all incoming: user.vscode("merge-conflict.accept.all-incoming")
conflict next: user.vscode("merge-conflict.next")
conflict previous: user.vscode("merge-conflict.previous")

yes: key("tab")
advise: key("ctrl-space")
next:
    key("escape")
    key("tab")

search next: user.vscode("search.action.focusNextSearchResult")
search (previous | last): user.vscode("search.action.focusPreviousSearchResult")

# Swap between the visible tabs
swapper: user.vscode("workbench.action.focusNextGroup")
