from talon import Context, Module, actions, system

mod = Module()
mod.tag("simon", desc="tag for enabling simon commands in your terminal")

ctx = Context()
ctx.matches = r"""
tag: user.simon
"""


@mod.action_class
class Actions:
    def pull_request_template(
        modelPrompt: str, modelSource: str, modelDestination: str
    ):
        """
        Automatically fills out the pull request template given the commit messages on the branch
        """
