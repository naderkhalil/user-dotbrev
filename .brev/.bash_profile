#Load in the git branch prompt script.
source ./helpers/.git-prompt.sh

#git autocomplete
if [ -f ./helpers/.git-completion.bash ]; then
  . ./helpers/.git-completion.bash
fi

#modify prompt
export PS1="\e[33;1m\t \e[37mwetrill \e[0m| \e[36m\w\e[31m\$(__git_ps1)\e[37m\n| => "
