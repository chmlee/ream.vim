" Vim syntax file
" Language: REAM
" Maintainer: Chih-Ming Louis Lee
" Latest Revision: 21 November 2020
" License: MIT

if exists('b:current_syntax')
    finish
endif


syn region reamEntry
    \ start=/^#/
    \ end=/$/
    \ oneline
hi def link reamEntry Define


syn match reamKey /\(^\s*-\s*\)\@<=.\+\(:\)\@=/
hi def link reamKey Identifier



syn match reamString /\(\s*.\+\s*:\s*\)\@<=.\+\(`$\)\@<!\(\$\)\@<!$/
hi def link reamString String



syn region reamNumber
    \ start=/\(\s*.\+\s*:\s*\)\@<=\$/
    \ end=/\$/
    \ oneline
    \ contains=reamFloat

syn match reamFloat /\(\$\)\@<=.\+\(\$\)\@=/ contained
hi def link reamFloat Float



syn region reamScript
    \ start=/\(\s*.\+\s*:\s*\)\@<=`/
    \ end=/`/
    \ oneline
    \ contains=reamBoolean
syn match reamBoolean /TRUE/ contained
syn match reamBoolean /FALSE/ contained
hi def link reamBoolean Boolean



syntax region reamItem
    \ start=/^\s*\*/
    \ end=/$/
    \ oneline
    \ contains=reamBoolean,reamFloat,reamItemString

syn match reamItemString /\(\s*\*\s*\)\@<=.\+\(`$\)\@<!\(\$\)\@<!$/
hi def link reamItemString String



syn match reamComment /^\s*>\s\+.\+$/
hi def link reamComment Comment
