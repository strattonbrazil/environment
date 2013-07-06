alias emacs='emacs -fg white -bg black'
alias e='emacsclient -n'
alias chrome_test='chromium-browser --disable-web-security --allow-file-access-from-files --allow-file-access --enable-file-cookies --user-data-dir=$HOME/.test_profile'
alias chrome_test_proxy='chrome_test --proxy-server=http://localhost:3128'
alias serve_from_here="echo 'http://diva:8000'; python -m SimpleHTTPServer"

complete -f -o default w

_waf() { find . -wholename "*/bin/waf" -exec {} $* \; ; }
_waf_test() { find . -wholename "*/bin/waf" -exec {} $* configure -p webkit --test browser build test \; ; }

alias ec='emacsclient -n'
alias s='sublime_text'

alias g='grep -R $@'

# keep this here for an EOF line
