from talon import Context, Module, actions

mod = Module()

ctx = Context()


@ctx.action_class("user")
class UserActions:
    def gpt_additional_user_context():
        """This is an override function that can be used to add additional context to the prompt"""
        return [
            (
                "The user has some colleagues with names that the speech recognition"
                " may not get right."
            ),
            "If you see something similar to Hana like Hannah etc, change it.",
            (
                "NEVER wrap your output in quotes if the input was not already wrapped"
                " in quotes."
            ),
        ]
