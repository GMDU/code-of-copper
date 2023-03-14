data modify storage bot:io Out set from storage bot:interpreter/evaluate stack[-1].a

execute if data storage bot:interpreter/evaluate stack[-1].b.value[0] run function bot:interpreter/evaluate/expression/operations/maths/add/object/loop
