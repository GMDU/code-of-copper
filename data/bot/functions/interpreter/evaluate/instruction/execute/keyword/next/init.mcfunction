function bot:interpreter/evaluate/instruction/execute/keyword/next/iterate

execute unless data storage bot:interpreter evaluate.stack[] run tellraw @a "Error: Yo dog! You can't use next outside of a loop man!"
execute unless data storage bot:interpreter evaluate.stack[] run return -1
execute if data storage bot:interpreter temp.instruction{tags:["enclosed"]} run tellraw @a "Error: Yo dog! You can't use next outside of a loop man!"
execute if data storage bot:interpreter temp.instruction{tags:["enclosed"]} run return -1

data modify storage bot:interpreter evaluate.loop set value true
