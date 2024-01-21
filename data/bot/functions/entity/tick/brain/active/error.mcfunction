data modify entity @s data.status set value "runtime_error"
data modify entity @s data.error set from storage glm:api/interpreter stdio.error[0]
data remove entity @s data.interpreter