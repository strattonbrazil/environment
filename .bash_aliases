alias emacs='emacs -fg white -bg black'
alias e='emacsclient -n'
alias chrome_test='chromium-browser --disable-web-security --allow-file-access-from-files --allow-file-access --enable-file-cookies --user-data-dir=$HOME/.test_profile'
alias chrome_test_proxy='chrome_test --proxy-server=http://localhost:3128'
alias ws='~/Public/WebStorm-133.434/bin/webstorm.sh'

alias upload=~/workspace/cube1/core/tools/upload.py

complete -f -o default w

_waf() { find . -wholename "*/bin/waf" -exec {} $* \; ; }
_waf_test() { find . -wholename "*/bin/waf" -exec {} $* configure -p webkit --test browser build test \; ; }


alias ec='emacsclient -n'
alias s='sublime_text'

alias g='grep -R $@'

# stole this from http://www.railstips.org/blog/archives/2009/02/02/bedazzle-your-bash-prompt-with-git-info/
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "

# keep this here for an EOF line
