data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
tellraw @a {"nbt":"Out", "storage": "bot:io"}
