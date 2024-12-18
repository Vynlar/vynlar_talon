app: vscode
mode: command
-

bar GitHub: user.vscode("pr:github.focus")
pilot switch: user.vscode("workbench.action.toggleAuxiliaryBar")
pilot edit: user.vscode("workbench.action.chat.openEditSession")

panel debug: user.vscode("workbench.panel.repl.view.focus")

debug pick: user.vscode("workbench.action.debug.selectandstart")
debug test [file]:
    user.vscode("workbench.action.debug.selectandstart")
    sleep(50ms)
    insert("current file")
    key("enter")

debug command:
    user.vscode("workbench.action.debug.selectandstart")
    sleep(50ms)
    insert("command")
    key("enter")

debug (web | server):
    user.vscode("workbench.action.debug.selectandstart")
    sleep(50ms)
    insert("web")
    key("enter")

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
project open recent: user.vscode("workbench.action.openRecent")

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
diff next:
    key(alt-f5)

diff next all:
    user.vscode("editor.action.accessibleDiffViewer.next")

diff last:
    key(shift-alt-f5)

git diff:
    user.vscode("git.openChange")

dock open: key(shift-cmd-ctrl-f12)
(wreck | rec) make: user.vscode("pr.create")
(wreck | rec) show: user.vscode("prStatus:github.focus")
(wreck | rec) diff: user.vscode("pr.openDiffView")

(wreck | rec) next: user.vscode("pr.goToNextDiffInPr")
(wreck | rec) last: user.vscode("pr.goToPreviousDiffInPr")
(wreck | rec) (scene | seen): user.vscode_and_wait("pr.markFileAsViewed")
(wreck | rec) web: user.vscode("pr.openPullRequestOnGitHub")

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
downer all:
    user.vscode("scrollEditorBottom")
upper: user.vscode("extension.smoothscroll_scrollUp")
upper all:
    user.vscode("scrollEditorTop")

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

docker up: user.vscode("vscode-docker.compose.up")
docker down: user.vscode("vscode-docker.compose.down")

terminal kill: user.vscode("workbench.action.terminal.kill")
terminal rename: user.vscode("workbench.action.terminal.rename")
