alias grep='grep --color=always'
alias ls='ls -CF --color=always'
alias cls='clear; ls'
alias emacs='emacsclient -nw'
alias tmux='TERM=xterm-256color tmux'
alias gh='ssh-add ~/.ssh/github'
alias lint='cpplint --root=.. src/**/*.{cc,h}'
alias vgrind='valgrind -v --tool=memcheck --leak-check=full --track-origins=yes --show-reachable=no ./bin/entt_dino'
alias pacrepo='sudo reflector -l 20 -f 10 --save /etc/pacman.d/mirrorlist'


# work
alias tester='/home/odin/yreceipts/yreceipts.com/utilities/tester/tester.py'
alias yr='tmuxp load ~/.config/tmuxp/yreceipts.yaml'
alias yr-nw='tmuxp load ~/.config/tmuxp/yreceipts-nw.yaml'
