:let g:Tex_DefaultTargetFormat = 'pdf'

if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        :let g:Tex_ViewRule_pdf = 'open'
    endif
endif
