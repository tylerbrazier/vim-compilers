if exists("current_compiler")
	finish
endif
let current_compiler = "eslint"

" TODO if eslint isn't executable fallback to npx

CompilerSet makeprg=eslint\ -f\ unix
" The %-G parts ignore empty lines, `x problems` lines, and `(node:...` warnings
CompilerSet errorformat=
			\%-G,
			\%-G%\\d%\\+\ problem%.%#,
			\%-G(%.%#,
			\%f:%l:%c:\ %m
