say evaluate
data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "evaluated"
data modify storage bot:interpreter evaluate.stack[-1].value_original set from storage bot:interpreter evaluate.stack[-1].value

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].value
tellraw @a {"storage":"bot:interpreter","nbt":"evaluate.next"}
