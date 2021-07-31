##############################################################################################
##### Replace this file with your .zshrc!                                                #####
##### If you don't have one, we'll use the default provided by zsh.                      #####
#####                                                                                    #####
##### NOTE: if you are referencing any helper files, add them to .brev/utils and         #####
##### reference them with the absolute path /home/brev/workspace/.brev/utils/<FILENAME>. #####
##############################################################################################
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
