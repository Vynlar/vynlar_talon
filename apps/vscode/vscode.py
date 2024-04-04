from talon import Context, Module, actions, app

is_mac = app.platform == "mac"

ctx = Context()
mac_ctx = Context()
mod = Module()
mod.apps.vscode = """
os: mac
and app.bundle: com.microsoft.VSCode
os: mac
and app.bundle: com.microsoft.VSCodeInsiders
os: mac
and app.bundle: com.visualstudio.code.oss
"""
mod.apps.vscode = """
os: linux
and app.name: Code
os: linux
and app.name: code-oss
os: linux
and app.name: code-insiders
os: linux
and app.name: VSCodium
os: linux
and app.name: Codium
"""
mod.apps.vscode = """
os: windows
and app.name: Visual Studio Code
os: windows
and app.name: Visual Studio Code Insiders
os: windows
and app.name: Visual Studio Code - Insiders
os: windows
and app.exe: Code.exe
os: windows
and app.exe: Code-Insiders.exe
os: windows
and app.name: VSCodium
os: windows
and app.exe: VSCodium.exe
os: windows
and app.name: Azure Data Studio
os: windows
and app.exe: azuredatastudio.exe
"""

ctx.matches = r"""
app: vscode
mode: command
"""
mac_ctx.matches = r"""
os: mac
app: vscode
"""

@ctx.action_class("app")
class AppActions:
    # talon app actions
    def scroll_down(repeat: int):
        for i in range(repeat):
            actions.user.vscode("extension.smoothscroll_scrollDown")

    def scroll_up(repeat: int):
        for i in range(repeat):
            actions.user.vscode("extension.smoothscroll_scrollUp")
            