" Auteur : Dimitri Robert
" " Ce fichier de syntaxe est sous licence Creative Commons BY-SA
" " http://creativecommons.org/licenses/by-sa/2.0/fr/
" " 
syntax match italique "{[^}]*}[^\n]"he=e-1
syntax match gras "{{[^}]*}}[^\n]"he=e-1

highlight italique term=italic cterm=italic
highlight gras term=bold cterm=bold

syntax region Titre2 start="^- " end="\n"
syntax region Titre1 matchgroup=accolad start="{{{" end="}}}\n"

highlight Titre1 term=bold cterm=bold ctermfg=red
highlight Titre2 term=none cterm=none ctermfg=darkred
"highlight Titre3 term=none ctermfg=yellow

highlight accolad term=bold ctermfg=darkmagenta

syntax match puce1 "^-\*"
syntax match puce2 "^-\*\*"
syntax match puce3 "^-\*\*\*"

highlight puce1 ctermfg=yellow
highlight puce2 ctermfg=darkgreen
highlight puce3 ctermfg=darkmagenta

syntax region lien matchgroup=liencrochet start="\[" end="\]" contains=fleche
syntax match fleche "->" contained
highlight lien ctermfg=darkyellow
highlight liencrochet ctermfg=blue
highlight fleche ctermfg=blue

syntax region code matchgroup=codetag start="<code>" end="</code>"
highlight code cterm=underline
highlight codetag ctermfg=darkblue

syntax region cadre start="<cadre>" end="</cadre>"
highlight cadre ctermbg=darkblue

syntax region quote start="<quote>" end="</quote>"
highlight quote ctermbg=darkgreen ctermfg=black
