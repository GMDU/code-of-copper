data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
data modify storage bot:io In set from storage bot:io Out
function bot:golem/execution/print/evaluate
tellraw @a {"nbt":"Out", "storage": "bot:io", "interpret": false}
