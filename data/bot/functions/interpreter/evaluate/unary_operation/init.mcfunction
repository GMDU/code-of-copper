say unary
execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/unary_operation/evaluate
tellraw @a {"storage":"bot:interpreter","nbt":"evaluate.current.metadata.status"}
execute if data storage bot:interpreter evaluate.current.metadata{status:"evaluated"} run function bot:interpreter/evaluate/unary_operation/perform_operation