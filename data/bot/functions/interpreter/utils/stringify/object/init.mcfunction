data modify storage bot:interpreter utils.stringify.result append value ["{"]
execute if data storage bot:interpreter utils.stringify.current.value[] run function bot:interpreter/utils/stringify/object/iterate
data modify storage bot:interpreter utils.stringify.result append value ["}"]