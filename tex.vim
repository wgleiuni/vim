:let g:Tex_DefaultTargetFormat = 'pdf'
:let g:Tex_MultipleCompileFormats = 'dvi pdf'
:set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        :let g:Tex_ViewRule_pdf = 'open'
    else
        :let g:Tex_ViewRuleComplete_pdf = "evince $*.pdf 2> /dev/null &"
    endif
endif
