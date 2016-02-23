highlight link bibboyLink Underlined
highlight link bibboyDeadlink Error

syntax clear bibboyLink
syntax clear bibboyDeadlink

syntax match bibboyDeadlink /[^{]\+\.pdf/

let s:files = split(glob("*"),'[\r\n]\+')
for s:file in s:files
    if s:file != expand('%')
        execute 'syntax keyword bibboyLink '.escape(s:file, ' ').''
    end
endfor

syntax cluster bibVarContents add=bibboyLink
syntax cluster bibVarContents add=bibboyDeadLink
