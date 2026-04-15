"param" @keyword
"dynamicparam" @keyword
"begin" @keyword
"process" @keyword
"end" @keyword
"if" @keyword
"elseif" @keyword
"else" @keyword
"switch" @keyword
"foreach" @keyword
"for" @keyword
"while" @keyword
"do" @keyword
"until" @keyword
"function" @keyword
"filter" @keyword
"workflow" @keyword
"break" @keyword
"continue" @keyword
"throw" @keyword
"return" @keyword
"exit" @keyword
"trap" @keyword
"try" @keyword
"catch" @keyword
"finally" @keyword
"data" @keyword
"inlinescript" @keyword
"parallel" @keyword
"sequence" @keyword

; foreach: `foreach ($x in $items)` — "in" is a reserved word
"in" @keyword

; class / enum names (keyword `class`/`enum` are anonymous tokens — highlight declared names)
(class_statement
  (simple_name) @type)

(enum_statement
  (simple_name) @type)

(class_attribute) @keyword

(class_method_definition
  (simple_name) @function)

(enum_member
  (simple_name) @variable)

"-as" @operator
"-ccontains" @operator
"-ceq" @operator
"-cge" @operator
"-cgt" @operator
"-cle" @operator
"-clike" @operator
"-clt" @operator
"-cmatch" @operator
"-cne" @operator
"-cnotcontains" @operator
"-cnotlike" @operator
"-cnotmatch" @operator
"-contains" @operator
"-creplace" @operator
"-csplit" @operator
"-eq" @operator
"-ge" @operator
"-gt" @operator
"-icontains" @operator
"-ieq" @operator
"-ige" @operator
"-igt" @operator
"-ile" @operator
"-ilike" @operator
"-ilt" @operator
"-imatch" @operator
"-in" @operator
"-ine" @operator
"-inotcontains" @operator
"-inotlike" @operator
"-inotmatch" @operator
"-ireplace" @operator
"-is" @operator
"-isnot" @operator
"-isplit" @operator
"-join" @operator
"-le" @operator
"-like" @operator
"-lt" @operator
"-match" @operator
"-ne" @operator
"-notcontains" @operator
"-notin" @operator
"-notlike" @operator
"-notmatch" @operator
"-replace" @operator
"-shl" @operator
"-shr" @operator
"-split" @operator
"-and" @operator
"-or" @operator
"-xor" @operator
"-band" @operator
"-bor" @operator
"-bxor" @operator
"+" @operator
"-" @operator
"/" @operator
"\\" @operator
"%" @operator
"*" @operator
".." @operator
"-not" @operator

; Switch / data / format operators not covered by comparison_operator list
"-regex" @operator
"-wildcard" @operator
"-exact" @operator
"-casesensitive" @operator
"-file" @operator
"-supportedcommand" @operator
"-parallel" @operator
"-f" @operator

; Pipeline boolean chains
"&&" @operator
"||" @operator

";" @delimiter

(string_literal) @string

(integer_literal) @number
(real_literal) @number

(command
  command_name: (command_name) @function)

(function_statement
  (function_name) @function)

(invokation_expression
  (member_name) @function)

(member_access
  (member_name) @property)

(command_invokation_operator) @operator

(type_spec) @type

(variable) @variable

(comment) @comment

(array_expression) @array

(assignment_expression
  value: (pipeline) @assignvalue)

; Cmdlet / function parameters (-Name, --% style switches)
(command_parameter) @attribute

; [CmdletBinding()], [Parameter(...)], type literals used as attributes
(attribute) @attribute

; Assignment and I/O operators (separate from reserved-word comparison ops)
(assignement_operator) @operator
(file_redirection_operator) @operator
(merging_redirection_operator) @operator
(pipeline_chain_tail) @operator

; $( ... ) subexpressions
(sub_expression) @embedded

; Literal collections
(array_literal_expression) @array

; @{ name = value }
(hash_literal_expression) @punctuation

; :label
(label) @label

; Ranges like 1..10
(range_expression) @number

; Stop-parsing / native arg passthrough
(verbatim_command_argument) @preprocessor