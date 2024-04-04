from talon import Context, Module

mod = Module()
mod.tag("simon", desc="tag for enabling simon commands in your terminal")
kubectl = "simon"

ctx = Context()
ctx.matches = r"""
tag: user.simon
"""
