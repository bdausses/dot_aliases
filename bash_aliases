# Aliases
################
# Globals
################
alias cls='clear'
alias hist='history|grep '
alias ..='cd ..'
alias ls='ls -H'
alias la='ls -alhHp'
alias lart='ls -alhHrtp'
alias lat='foo=`ls -tr|tail -1`;tail -f $foo'
alias cart='foo=`ls -tr|tail -1`;cat $foo'
alias lesst='foo=`ls -tr|tail -1`;less $foo'
alias big_file_find='find . -xdev -name "*" -size +100000000c -exec ls -alh {} \;'
alias ts="date '+%Y%m%d.%H%M%S'"
alias ds="date '+%Y%m%d'"
alias format="format < /dev/null"
alias mysql_no_formatting="mysql -u root -p -B -N"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias strip_and_compress_whitespace="sed 's/^[ \t]*//;s/[ \t]*$//'|sed 's/  */ /g'"
alias ipsort="sort -t . -k 3,3n -k 4,4n"

################
# Git Specific
################
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gb='git branch'
alias gba='git branch -a'
alias gbda='git branch --merged | command grep -vE "^(*|s*masters*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v'
alias 'gc!'='git commit -v --amend'
alias gca='git commit -v -a'
alias 'gca!'='git commit -v -a --amend'
alias gcam='git commit -a -m'
alias 'gcan!'='git commit -v -a -s --no-edit --amend'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gcmsg='git commit -S -s -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcs='git commit -S'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ggpull='git pull origin $(git_current_branch)'
alias ggpush='git push origin $(git_current_branch)'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gk='gitk --all --branches'
alias gke='gitk --all $(git log -g --pretty=format:%h)'
alias gl='git pull'
alias glg='git log --stat --color'
alias glgg='git log --graph --color'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat --color -p'
alias glo='git log --oneline --decorate --color'
alias glog='git log --oneline --decorate --color --graph'
alias glol='git log --graph --pretty=format:''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'' --abbrev-commit'
alias glola='git log --graph --pretty=format:''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'' --abbrev-commit --all'
alias glp=_git_log_prettily
alias glum='git pull upstream master'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/master'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpoat='git push origin --all && git push origin --tags'
alias gpristine='git reset --hard && git clean -dfx'
alias gpu='git push upstream'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "--wip--" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'

################
# Work Specific
################
#alias audit_cpu_mem="echo \"`hostname`:cpu_count:`cat /proc/cpuinfo |grep ^processor|wc -l`:total_memory:`free -m|grep Mem| cut -d ':' -f2 |sed 's/^[ \t]*//;s/[ \t]*$//'|cut -d ' ' -f1`\""
#alias restart_apache="sudo /etc/init.d/httpd restart"
#alias cdap="cd /etc/httpd/"
#alias cdre="cd /etc/httpd/redirects.d"
#alias lbhealthcheck="curl --silent -H host:lbhealthcheck.gm.com http://`hostname -i`/server-status?auto"
#alias reloadit="sudo /opt/wp/bin/reload_apache.sh"
#alias disable_disp="sudo_ssh_command \"/opt/wp/bin/set_cluster_node_status.sh disable Disabled for maintenance.\""
#alias disable_lock_disp="sudo_ssh_command \"/opt/wp/bin/set_cluster_node_status.sh disable lock Business Continuity switchover test in progress.  DO NOT enable these nodes.\""
#alias enable_disp="sudo_ssh_command \"/opt/wp/bin/set_cluster_node_status.sh enable\""
#alias enable_override_disp="sudo_ssh_command \"/opt/wp/bin/set_cluster_node_status.sh enable override\""
#alias dhc="/opt/wp/bin/dispatcher_health_check.sh"
#alias phc="/opt/wp/bin/publisher_health_check.sh"
#alias home_dir_audit="ls -A | xargs du -sk | sort -rn | ~dnelson/bin/commafy.pl | less"
#alias cachecheck="/opt/dell/srvadmin/bin/omreport storage vdisk controller=0"
#alias batterycheck="/opt/dell/srvadmin/bin/omreport storage battery"
alias res_present="screenresolution set 1920x1080x32@60"
alias res_native="screenresolution set 3440x1440x32@50"
