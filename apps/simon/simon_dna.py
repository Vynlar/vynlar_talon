from typing import Dict
from talon import Module, Context, actions


mod = Module()
mod.list("dna_components", desc="List of DNA components")
mod.list("dna_sizes", desc="List of DNA sizes")

ctx_react = Context()
ctx_react.lists["user.dna_components"] = {
    "text": "text", 
    "stack": "stack",
}
ctx_react.lists["user.dna_sizes"] = {
    "extra small": "xs",
    "small": "sm",
    "medium": "md",
    "large": "lg",
    "extra large": "xl",
}

@mod.capture(rule="{user.dna_sizes}")
def dna_space(m) -> Dict[str, str]:
    print(f'sizes: {m.dna_sizes}')
    return {
        "space": m.dna_sizes
    }

def serialize_attributes(attributes: Dict[str, str]):
    if len(attributes) > 0:
        attribute_string = (" " + " ".join([f"{key}=\"{value}\"" for key, value in attributes.items()]))
    else:
        attribute_string = ""
    return attribute_string
    

@mod.action_class
class Actions:


    def insert_tag(tag_name: str, attributes: Dict[str, str]):
        """
        Inserts a tag with the given parameters
        """
        attribute_string = serialize_attributes(attributes)
        actions.user.insert_between(f"<{tag_name}{attribute_string}>", f"</{tag_name}>")


    def insert_self_closing_tag(tag_name: str, attributes: Dict[str, str] = {}):
        """
        Inserts a self closing tag
        """
        attribute_string = serialize_attributes(attributes)
        actions.user.insert(f"<{tag_name}{attribute_string} />")

        
        
        