# Brev Setup

Whenever you create or join a project, your user `.brev` directory runs, automating the setup of your workspace.

Fork and modify this template to add your own custom settings.

## Setup Steps

#### VSCode Settings and Extensions
1. Replace `.vscode/settings.json` with your personal VSCode `settings.json`.
> To locate your personal VSCode `settings.json`, first open VSCode. Then click Cmd+Shft+P (Ctrl+Shft+P for Windows) and type `>Preferences: Open Default Settings (JSON)`.

2. Open `.brev/setup.sh` and add your VSCode extensions.
> To find an extension id, go to the extensions tab of your VSCode. Click the settings icon on the bottom right of the extension card, then select `Copy Extension ID`. You can also locate the extension id by clicking on the extension card and looking to the right of the extension name.

#### Terminal Settings

Use **zsh**? Do this 👇 (type `zsh --version` to see if you have zsh installed)

3a. Replace `.brev/.zshrc` with your personal `.zshrc`. Note your `.zshrc` file would be located at `~/.zshrc`.
> If you use zsh, you will have this file! If not, step 3b will apply to you. Type in `cat ~/.zshrc` into your terminal to display the file.


Use **bash** instead? Do this👇

3b. Replace `.brev/.bash_profile` with your personal `.bash_profile`. Note your `.bash_profile` file would be located at `~/.bash_profile`.
> Most people have this pre-installed! If you use zsh instead, step 3a should apply to you. Type in `cat ~/.bash_profile` into your terminal to display the file. 

#### Other Global Tools (Advanced)
4. Go back to `.brev/setup.sh`. If there are other tools you'd like to install *globally* (this means they are downloaded everytime you create or join a project), add them here.
> For example, we add zsh automatically everytime!

## Contents

If you want to adjust these for more custom setups, here's more information on how this configuration repository is structured.

##### `.brev/setup.sh`
This is the main file that runs on your linux machine, directly after we provision it and before your project is cloned.
You can pre-download VSCode extensions and globally install software like zsh, linux build tools, or create-react-app. Anything that you would globally install on your computer.

Careful not to place too many software packages in here (like Node v14, Python, or Go), and instead place that in your project's `.brev`. This way different versions of your software will not conflict, and others can clone your environment.

##### `.brev/.bash_profile` and `.brev/.zshrc`
This should be replaced with your bash profile or your zshrc. We use this to setup aliases, git completion or any other terminal specific settings you have for your terminal.
We have recommended aliases and git completion if you want to uncomment those lines.

##### `.vscode/settings.json`
This file is copied into our fork of VSCode so your settings are the same.

##### `helpers/*`
Here we keep helper files that run in the above directories. Ex. `git-completion.bash` runs if you use our recommended bash_profile settings. It is also common in personal setups, so we keep it here in case you want to reference it!
