data remove entity @s data.instructions
data modify entity @s data.status set value "error"
data modify entity @s data.error set from storage bot:interpreter/execution Error
data remove storage bot:interpreter/execution Error
