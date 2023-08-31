# 27f5de0a-8828-451e-b781-dd9f986b7161
execute in moxlib:state positioned 12 -4 3 run summon marker ~ ~ ~ {UUID:[I; 670424586, -2010626786, -1216225889, -1737789087]}

data modify storage moxlib:test/it describes set value "A literal integer"

  data modify storage bot:io In set value {type: "literal", variant: "integer", value: 3}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 3}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A literal string"

  data modify storage bot:io In set value {type: "literal", variant: "string", value: ["f","o","o"]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["f","o","o"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A regular expression"

  data modify storage bot:io In set value {type: "literal", variant: "regex", value: ["a","b","?","c"]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {source_string: ["a","b","?","c"], type: "regex", value: [[{type: "literal", value: "a", quantifier: "exactly_one"}, {type: "literal", value: "b", quantifier: "zero_or_one"}, {type: "literal", value: "c", quantifier: "exactly_one"}]]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A variable"

  data modify storage bot:io In set value {type: "literal", variant: "variable", value: ["v","a","r"]}
  data modify entity 27f5de0a-8828-451e-b781-dd9f986b7161 data.variables set value [{name: ["v","a","r"], value: {type: "string", value: ["h","i"]},scope:0b}]
  execute as 27f5de0a-8828-451e-b781-dd9f986b7161 run function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["h","i"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "The $POS variable"

  data modify storage bot:io In set value {type: "literal", variant: "variable", value: ["P","O","S"]}
  execute as 27f5de0a-8828-451e-b781-dd9f986b7161 run function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "integer", value: 12}, {type: "integer", value: -4}, {type: "integer", value: 3}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A simple array"

  data modify storage bot:io In set value {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 15 }, { type: "literal", variant: "string", value: ["h","i"] }]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "integer", value: 15}, {type: "string", value: ["h","i"]}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A compound array"

  data modify storage bot:io In set value {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 71 }, { type: "literal", variant: "array", value: [{ type: "literal", variant: "string", value: ["b","a","r"] }]}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "integer", value: 71}, {type: "array", value: [{type: "string", value: ["b","a","r"]}]}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A simple object"

  data modify storage bot:io In set value {"type":"literal","variant":"object","value":[{"key":{type: "literal", variant: "string", value: ["f","o","o"]},"value":{"type":"literal","variant":"string","value":["b","a","r"]}},{"key":{type: "literal", variant: "string", value: ["h","e","l","l","o"]},"value":{"type":"literal","variant":"string","value":["w","o","r","l","d"]}}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "object", value: [{key: {type: "string", value: ["f","o","o"]}, value: {type: "string", value: ["b","a","r"]}}, {key: {type: "string", value: ["h","e","l","l","o"]}, value: {type: "string", value: ["w","o","r","l","d"]}}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A compound object"

  data modify storage bot:io In set value {"type":"literal","variant":"object","value":[{"key":{type: "literal", variant: "string", value: ["f","o","o"]},"value":{"type":"literal","variant":"string","value":["b","a","r"]}},{"key":{type: "literal", variant: "string", value: ["o","b","j"]},"value":{"type":"literal","variant":"object","value":[{"key":{type: "literal", variant: "string", value: ["t","e","s","t"]},"value":{"type":"literal","variant":"integer","value":1}}]}}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {"type":"object","value":[{"key":{type: "string", value: ["f","o","o"]},"value":{"type":"string","value":["b","a","r"]}},{"key":{type: "string", value: ["o","b","j"]},"value":{"type":"object","value":[{"key":{type:  "string", value: ["t","e","s","t"]},"value":{"type":"integer","value":1}}]}}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing a string"

  data modify storage bot:io In set value {type: "literal", variant: "string", value: ["h","e","l","l","o"], parameters: [{type: "literal", variant: "integer", value: 1}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["e"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing an array"

  data modify storage bot:io In set value {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 15 }, { type: "literal", variant: "string", value: ["h","i"] }, {type: "literal", variant: "integer", value: 34}], parameters: [{type: "literal", variant: "integer", value: 2}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 34}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing an array with a negative index"

  data modify storage bot:io In set value {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 15 }, { type: "literal", variant: "string", value: ["h","i"] }, {type: "literal", variant: "integer", value: 34}], parameters: [{type: "literal", variant: "integer", value: -3}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 15}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing an object by a number"

  data modify storage bot:io In set value {type: "literal", variant: "object", value: [{"key":{type: "literal", variant: "string", value: ["f","o","o"]},"value":{"type":"literal","variant":"string","value":["b","a","r"]}},{"key":{type: "literal", variant: "string", value: ["h","e","l","l","o"]},"value":{"type":"literal","variant":"string","value":["w","o","r","l","d"]}}], parameters: [{type: "literal", variant: "integer", value: 0}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["b","a","r"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing an object by a string"

  data modify storage bot:io In set value {type: "literal", variant: "object", value: [{"key":{type: "literal", variant: "string", value: ["f","o","o"]},"value":{"type":"literal","variant":"string","value":["b","a","r"]}},{"key":{type: "literal", variant: "string", value: ["h","e","l","l","o"]},"value":{"type":"literal","variant":"string","value":["w","o","r","l","d"]}}], parameters: [{type: "literal", variant: "string", value: ["h","e","l","l","o"]}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["w","o","r","l","d"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Indexing a variable"

  data modify storage bot:io In set value {type: "literal", variant: "variable", value: ["v","a","r"], parameters: [{type: "literal", variant: "integer", value: 4}]}
  data modify entity 27f5de0a-8828-451e-b781-dd9f986b7161 data.variables set value [{name: ["v","a","r"], value: {type: "string", value: ["h","e","l","l","o"]},scope:0b}]
  execute as 27f5de0a-8828-451e-b781-dd9f986b7161 run function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["o"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Multiple levels of indexing"

  data modify storage bot:io In set value {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 15 }, { type: "literal", variant: "string", value: ["h","i"] }, {type: "literal", variant: "integer", value: 34}], parameters: [{type: "literal", variant: "integer", value: 1}, {type: "literal", variant: "integer", value: 0}]}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["h"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "An unsuccessful evaluation"

  data modify storage bot:io In set value {type: "literal", variant: "foo"}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "undefined", value: false}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

kill 27f5de0a-8828-451e-b781-dd9f986b7161
