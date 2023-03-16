; Keywords
((keyword) @keyword)

; Identifiers
((identifier) @variable)

; Shebang
((shebang) @comment)

; Comment
((comment) @comment)

; Import statement
((import_statement) @include)

; Function declarations
((func_declaration
  identifier: (identifier) @function))

; Function calls
((function_call
  identifier: (identifier) @function))

; Punctuation
((function_call
  "(" @punctuation
  ")" @punctuation))
((argument_list
  "," @punctuation))
((key_value_pair
  ":" @punctuation))
((list_expression
  "[" @punctuation
  "]" @punctuation))
((map_expression
  "{" @punctuation
  "}" @punctuation))

; Object declaration
((object_declaration) @class)

; Field declaration
((field_declaration) @property)

; Parameter list
((parameter_list) @parameter)

; Var declaration
((var_declaration) @variable)

; Block
((block) @block)

; If statement
((if_statement
  "if" @keyword
  "else" @keyword))

; Loop statement
((loop_statement
  "loop" @keyword))

; For loop
((for_loop
  "for" @keyword
  "each" @keyword))

; Assignment statement
((assignment_statement) @operator)

; Expression statement
((expression_statement) @statement)

; Number
((number) @number)

; String
((string) @string)

; List expression
((list_expression) @list)

; Map expression
((map_expression) @dictionary)

; Tag expression
((tag_expression
  "#" @tag))