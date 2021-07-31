# Brev Setup

Whenever you create or join a project, your user `.brev` directory runs, automating the setup of your workspace.

Fork and modify this template to add your own custom settings.

## Setup Steps

### 1. VSCode Settings ###

Replace `.vscode/settings.json` with your personal VSCode `settings.json`.
>To locate your personal VSCode `settings.json`, first open VSCode. Then click Cmd+Shft+P (Ctrl+Shft+P for Windows) and type `>Preferences: Open Settings (JSON)`.

Open `.brev/setup.sh` and add your VSCode extensions.
>The extension ID can be found to the right of the VSCode extension
![img](https://console.brev.dev/static/media/vscodepackage.9dd68dbc.png)

`code-server --install-extension <HIGHLIGHTED_ID>`         

### Terminal Settings

#### Use **zsh**? Do this 👇 (type `zsh --version` to see if you have zsh installed)
#### a. Replace `.zshrc` with your personal `.zshrc`.
>If you use zsh, you will have this file! If not, step 3b will apply to you. Type in `cat ~/.zshrc` into your terminal to display the file. If you have any files you want to reference in this script, add them to the `.brev/utils` folder and reference them as `/home/brev/workspace/.brev/utils/<FILENAME>`.

#### Use **bash** instead? Do this👇
#### a. Replace `.bash_profile` with your personal `.bash_profile`.
>Most people have this pre-installed! If you use zsh instead, step 3a should apply to you. Type in `cat ~/.bash_profile` into your terminal to display the file. If you have any files you want to reference in this script, add them to the `.brev/utils` folder and reference them as `/home/brev/workspace/.brev/utils/<FILENAME>`.

#### b. Comment out the code under `##### MAKE ZSH DEFAULT #####` in `.brev/setup.sh`.
> Specifically lines 45 - 51.

If there are other tools you'd like to install *globally* (this means they are downloaded everytime you create or join a project), add them in `.brev/setup.sh`. For example, this is where we add zsh!

**Done! Happy coding!**

## Repository Contents

If you want to adjust these for more custom setups, here's more information on how this configuration repository is structured.

#### `.brev`
This is our main configuration folder. This is run everytime you create or join a new project. There is also a project specific dot brev with the same structure, which holds software that you can download for each project.

#### `.brev/setup.sh`
This is the main file that runs on your linux machine, directly after we provision it and before your project is cloned.

You can pre-download VSCode extensions and globally install software like zsh, linux build tools, or create-react-app. Anything that you would globally install on your computer.

Careful not to place too many software packages in here (like Node v14, Python, or Go), and instead place that in your project's `.brev`. This way different versions of your software will not conflict, and others can clone your environment.

#### `.brev/logs`
This is where we keep logs that occur when running the setup script and cloning repositories (such as this one, and your project repository if you are creating or joining a project from git).

#### `.brev/utils`
This is where we keep any other files that you'd like to include in your `.bash_profile` or your `.zshrc`. We port this folder to each workspace. References will always be `/home/brev/workspace/.brev/utils/<FILENAME>`. Ex. `git-completion.bash` runs if you use our recommended `.bash_profile` settings.

#### `.bash_profile` and `.zshrc`
This should be replaced with your bash profile or your zshrc. We use this to setup aliases, git completion or any other terminal specific settings you have for your terminal.
We have recommended aliases and git completion if you want to uncomment those lines. Again, any other files you'd like to reference should be in `/home/brev/workspace/.brev/utils/<FILENAME>`.

#### `.vscode/settings.json`
This file is copied into our fork of VSCode so your settings are the same.
