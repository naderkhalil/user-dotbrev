###############################################
##### Copy your .bash_profile here!       #####
##### Here are some recommended settings. #####
###############################################

##### Bash #####
alias ll='ls -laghFG'
alias cd..='cd ..'

##### Git #####
alias push='git pull origin master && git push origin master'
alias pull='git pull origin master'
alias clone='git clone $1'
alias b="git branch"
alias s="git status"
alias a="git add ."
alias drop="git stash && git stash drop"
c() {
  git commit -m "$1"
}

if [ -f ../helpers/git-completion.bash ]; then
  . ../helpers/git-completion.bash
fi
