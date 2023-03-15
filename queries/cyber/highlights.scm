; highlights.scm
[
  (shebang) @comment
]

[
  (comment) @comment
]

[
  (import_statement)
  "import" @keyword
]

[
  (alias) @string
]

[
  (assignment)
  "=" @operator
]

[
  (function_call
   "(" @punctuation.bracket
   ")" @punctuation.bracket)
]

[
  (string) @string
]

[
  (map
   "{" @punctuation.bracket
   "}" @punctuation.bracket)
]

[
  (key_value
   ":" @operator)
]

[
  (if_statement
   "if" @conditional
   ":" @punctuation.separator)
]

[
  (function_definition
   "func" @function
   (parameters
    "(" @punctuation.bracket
    ")" @punctuation.bracket))
]
