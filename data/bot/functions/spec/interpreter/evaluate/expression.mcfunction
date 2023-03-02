data modify storage moxlib:test/it describes set value "An expression with no second value"

  data modify storage bot:io In set value {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 2}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 2}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "An addtition of two numbers"

  data modify storage bot:io In set value {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 1}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 2}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 3}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A subtraction of two numbers"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "integer", value: 1}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 2}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: -1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A multiplication operation"

  data modify storage bot:io In set value {type: "expression", operation: "multiply", value: {type: "literal", variant: "integer", value: 5}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 3}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 15}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A division operation"

  data modify storage bot:io In set value {type: "expression", operation: "divide", value: {type: "literal", variant: "integer", value: 5}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 3}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A modulo operation"

  data modify storage bot:io In set value {type: "expression", operation: "modulo", value: {type: "literal", variant: "integer", value: 5}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 3}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 2}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A succesful equality between two values"

  data modify storage bot:io In set value {type: "expression", operation: "equals", value: {type: "literal", variant: "string", value: ["f","o","o"]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["f","o","o"]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "An unsuccesful equality between two values"

  data modify storage bot:io In set value {type: "expression", operation: "equals", value: {type: "literal", variant: "string", value: ["f","o","o"]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["b","a","r"]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 0}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A greater than operation on two numbers"

  data modify storage bot:io In set value {type: "expression", operation: "greaterThan", value: {type: "literal", variant: "integer", value: 7}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 3}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A less than operation on two numbers"

  data modify storage bot:io In set value {type: "expression", operation: "lessThan", value: {type: "literal", variant: "integer", value: 7}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 3}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 0}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A greater than operation on two strings"

  data modify storage bot:io In set value {type: "expression", operation: "greaterThan", value: {type: "literal", variant: "string", value: ["h","e","l","l","o"]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["h","i"]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "A greater than operation on two arrays"

  data modify storage bot:io In set value {type: "expression", operation: "greaterThan", value: {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 15 }, { type: "literal", variant: "string", value: ["h","i"] }]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "array", value: [{ type: "literal", variant: "integer", value: 2 }]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "integer", value: 1}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "An addtition of two strings"

  data modify storage bot:io In set value {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["H","e","l","l","o",","," "]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["w","o","r","l","d","!"]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["H","e","l","l","o",","," ","w","o","r","l","d","!"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Appending an item to an array"

  data modify storage bot:io In set value {type: "expression", operation: "add", value: {type: "literal", variant: "array", value: [{type: "literal", variant: "string", value: ["h","i"]}]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 123}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "string", value: ["h","i"]}, {type: "integer", value: 123}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Merging two objects"

  data modify storage bot:io In set value {type: "expression", operation: "add", value: {type: "literal", variant: "object", value: [{key: ["f","o","o"], value: {type: "literal", variant: "string", value: ["b","a"]}}, {key: ["h","i"], value: {type: "literal", variant: "integer", value: 62}}]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "object", value: [{key: ["f","o","o"], value: {type: "literal", variant: "string", value: ["b","a","r"]}}, {key: ["o","t","h","e","r"], value: {type: "literal", variant: "string", value: ["a"]}}]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "object", value: [{key: {type: "string", value: ["f","o","o"]}, value: {type: "string", value: ["b","a","r"]}}, {key: {type: "string", value: ["h","i"]}, value: {type: "integer", value: 62}}, {key: {type: "string", value: ["o","t","h","e","r"]}, value: {type: "string", value: ["a"]}}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Removing characters from the end of a string"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "string", value: ["H","e","l","l","o",","," "]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 2}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["H","e","l","l","o"]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Removing characters from the beginning of a string"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "string", value: ["H","e","l","l","o",","," "]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: -2}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "string", value: ["l","l","o",","," "]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Removing characters from the end of an array"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "array", value: [{type: "literal", variant: "integer", value: 1}, {type: "literal", variant: "integer", value: 2}, {type: "literal", variant: "integer", value: 3}]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: 1}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "integer", value: 1}, {type: "integer", value: 2}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Removing characters from the beginning of an array"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "array", value: [{type: "literal", variant: "integer", value: 1}, {type: "literal", variant: "integer", value: 2}, {type: "literal", variant: "integer", value: 3}]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "integer", value: -1}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "array", value: [{type: "integer", value: 2}, {type: "integer", value: 3}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform

data modify storage moxlib:test/it describes set value "Deleting an object key"

  data modify storage bot:io In set value {type: "expression", operation: "subtract", value: {type: "literal", variant: "object", value: [{key: ["f","o","o"], value: {type: "literal", variant: "string", value: ["b","a"]}}, {key: ["h","i"], value: {type: "literal", variant: "integer", value: 62}}]}, expression: {type: "expression", operation: "add", value: {type: "literal", variant: "string", value: ["f","o","o"]}}}
  function bot:interpreter/evaluate

  data modify storage moxlib:test/it expects set value {type: "object", value: [{key: {type: "string", value: ["h","i"]}, value: {type: "integer", value: 62}}]}
  data modify storage moxlib:test/it receives set from storage bot:io Out

  function moxlib:api/test/perform
