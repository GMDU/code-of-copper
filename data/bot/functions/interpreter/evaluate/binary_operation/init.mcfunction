execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/binary_operation/evaluate_a
execute if data storage bot:interpreter evaluate.current.metadata{status:"evaluating_a"} run function bot:interpreter/evaluate/binary_operation/evaluate_b
execute if data storage bot:interpreter evaluate.current.metadata{status:"evaluating_b"} run function bot:interpreter/evaluate/binary_operation/perform_operation
