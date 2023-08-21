data modify entity @s data.status set value "runtime_error"
data modify entity @s data.error set from storage bot:interpreter error
data remove entity @s data.interpreter.evaluate.stack