if exists("current_compiler")
	finish
endif
let current_compiler = "markdownlint"

" TODO if markdownlint-cli2 isn't executable fallback to npx

CompilerSet makeprg=markdownlint-cli2
" The %-G parts remove the summary lines
CompilerSet errorformat=
			\%-Gmarkdownlint-cli2\ v%.%#,
			\%-GFinding:\ %.%#,
			\%-GLinting:\ %.%#,
			\%-GSummary:\ %.%#,
			\%f:%l:%c\ %trror\ MD%n/%m,
			\%f:%l\ %trror\ MD%n/%m
