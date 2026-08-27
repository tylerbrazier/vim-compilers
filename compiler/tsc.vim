if exists("current_compiler")
	finish
endif
let current_compiler = "tsc"

" TODO if tsc isn't executable fallback to npx

CompilerSet makeprg=tsc\ --pretty\ false
CompilerSet errorformat=%f(%l\\,%c):\ %trror\ TS%n:\ %m
