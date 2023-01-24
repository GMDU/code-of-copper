data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate
tellraw @a {"nbt":"Out[0]", "storage": "bot:io"}
