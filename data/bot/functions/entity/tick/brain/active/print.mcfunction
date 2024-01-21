tellraw @a {"storage": "glm:api/interpreter", "nbt": "stdio.out[0].value", "interpret": true}
data remove storage glm:api/interpreter stdio.out[0]

execute if data storage glm:api/interpreter stdio.out[] run function bot:entity/tick/brain/active/print
