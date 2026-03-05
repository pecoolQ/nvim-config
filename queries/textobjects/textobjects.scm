
;; --- Global textobjects for variable & type declarations ---

;; Match variables in most languages
(variable_declarator name: (identifier) @variable.outer)
(lexical_declaration (variable_declarator) @variable.outer)
(assignment left: (identifier) @variable.outer)
(identifier) @variable.outer

;; Match type/interface/class-like declarations
(interface_declaration name: (identifier) @type.outer)
(type_alias_declaration name: (type_identifier) @type.outer)
(class_definition name: (identifier) @type.outer)
(type_declaration name: (identifier) @type.outer)
