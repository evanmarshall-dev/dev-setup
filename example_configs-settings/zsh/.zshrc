# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# PATH TO OH MY ZSH INSTALLATION
# ----------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# ZSH THEMES
# ----------------------------------------------
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# ZSH PLUGINS
# ----------------------------------------------
plugins=(
  git
  node
  npm
  nvm
  history
  macos
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# SOURCE
# ----------------------------------------------
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# MACOSX ALIASES
# ----------------------------------------------
hiddenOn() {
  echo "Show hidden folder on your Mac. 👓"
  defaults write com.apple.Finder AppleShowAllFiles true
  echo "****************************************"
  echo "Refresh finder window. 🪟"
  killall Finder ;
  echo "DONE! 😃"
} # Show hidden folders in MacOSX.

hiddenOff() {
  echo "Hide hidden folder on your Mac. 👓"
  defaults write com.apple.Finder AppleShowAllFiles true
  echo "****************************************"
  echo "Refresh finder window. 🪟"
  killall Finder ;
  echo "DONE! 😃"
} # Hide hidden folders in MacOSX.

# CLI ALIASES
# ----------------------------------------------
alias up="echo -e 'Going up a directory, boiiii! 🛸\n\n' && cd .." # Up one directory.
alias in="echo -e 'Getting all up in that directory! 🚪\n\n' && cd" # Out to root directory or if you follow this command with a directory name or path it moves into said directory.
alias md="echo -e 'You make that folder! 📁\n\n' && mkdir" # Create a directory.
alias dd="echo -e 'Nobody wants that folder! 🤮\n\n' && rm -r" # Remove a directory recursively (Removes all sub-directories and files).
alias mf="echo 'Populating your computer with little baby files! 👶\n\n' && touch" # Create a file.
alias df="echo -e 'The milk was a bad choice, remove that file! 🥛\n\n' && rm" # Remove a file.
alias m="echo -e 'Just keep moving, just keep moving! 🐠\n\n' && mv" # Move a file.
alias c="echo -e 'Copying that file?? How about you be original! ©️\n\n' && cp" # Copy a file.
alias l="echo -e 'Ooooo, what is in here?! 🧐\n\n' && ls" # List contents of current directory.
alias la="echo -e 'Ooooo, piece a candy! 🍬\n\n' && ls -a" # Lists all contents including hidden files and admin permissions.
alias p="echo -e 'Where are we again? 😳\n\n' && pwd" # Displays your current directory.
alias cl="echo -e 'Time to clean up, it is messy in here!! 🧹\n\n' && clear" # Clears terminal/command window.

mkcd() {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name 😠"
  elif [ -d $1 ]; then
    echo "\`$1' already exists 🫣"
  else
    mkdir $1 && cd $1
  fi
} # Create a directory and cd into it.

# HOMEBREW ALIASES
# ----------------------------------------------
alias -g bup="echo -e 'Your brew is looking a bit sour, better refresh that! 🍻\n\n' && brew update && brew upgrade && brew cleanup && brew doctor" # Updates/upgrades Homebrew packages, removes outdated files, and check system for problems.
alias bl="echo -e 'Let us see what brews you have in your collection. 📚\n\n' && brew list" # Lists all Homebrew packages.

# WSL/UBUNTU ALIASES
# ----------------------------------------------
alias -g uup="echo -e 'Your linux packages are looking a bit dated... 👴\n\n' && sudo apt-get update && sudo apt-get upgrade -y" # Updates/upgrade linux packages and prompt "yes" anytime command asks for it.

# ZSH/OH-MY-ZSH ALIASES
# ----------------------------------------------
alias zin="echo -e 'Get ready for some linuxy goodness!! 🤯\n\n' && sh -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'" # Installs Oh My ZSH.
alias zed="echo -e 'Editing your ZSH config, eh? 👨‍🔬\n\n' && code ~/.zshrc" # Edit global ZSH config.
alias zre="echo -e 'It is annoying, but we have to refresh the config EVERYTIME we make a change... 🙃\n\n' && source ~/.zshrc" # Reloads ZSH config after changes.

# SSH ALIASES
# ----------------------------------------------
alias shao="echo -e 'Making sure you are in the correct directory before creating some SSH stuff! 🔍\n\n' && cd ~/.ssh" # Navigate to global ssh directory.
alias shacon="echo -e 'Open that config... SHHHHH! 🤫\n\n' && code ~/.ssh/config" # Edit global ssh configuration using vscode.
alias shagen="echo -e 'The key to your heart :) 💞\n\n' && ssh-keygen -t ed25519 -C" # Creates a local SSH key if followed by filename (i.e. personal-github).
alias shagent="echo -e 'I do not know what this is, but we gotta do it or else the next step will not work... 😕\n\n' && eval '$(ssh-agent -s)'" # Starts SSH agent.
alias shakey="echo -e 'The name is Bond, James Bond... and I need that key! 🔑\n\n' && ssh-add -K ~/.ssh/" # Adds SSH key to agent. Make sure you add filename created with skgen alias to the end of this alias.
alias shatest="echo -e 'Did it work?? ✋\n\n' && ssh -T git@" # Test your connection. Make sure you add your Host name created during the config file setup, to the end of this alias.

# GULP ALIASES
# ----------------------------------------------
alias gu="echo -e 'GULP! 😧\n\n' && gulp" # Runs gulp command.
alias gufr="echo -e 'LES GULP!? 👨‍🎨\n\n' && gulp devFr" # Runs French gulp command.
alias gut="echo -e 'Let us check out that work! 🤑\n\n' && gulp --template" # Runs development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gutfr="echo -e 'Tu es... Grande poulette! 👨‍🎨\n\n' && gulp devFr --template" # Runs French development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gub="echo -e 'Well you are just a cute little Bob the builder! 👷‍♂️\n\n' && gulp build" # Runs build tasks.
alias gubfr="echo -e 'Es que je puis aller aux toilettes! 👨‍🎨\n\n' && gulp buildFr" # Runs the French build tasks.
alias gucl="echo -e 'Clean up, clean up, everybody clean up! 🎵\n\n' && gulp clean" # Runs the clean or delete task for dev and prod directories.

# GIT ALIASES
# ----------------------------------------------
alias gcon="echo -e 'Opening your global Git Config file. 🎛️\n\n' && code ~/.gitconfig" # Opens global gitconfig file in vscode.
alias gig="echo -e 'Opening up your global Git Ignore file. 🎛️\n\n' && code ~/.gitignore_global" # Opens global gitconfig file in vscode.
alias gcm="echo -e 'A little shortcut to speed up your commit process. 🛣️\n\n' && git add . && git commit -m" # Adds all changed files to staging and generates a commit with message. Append the git commit message to the end of this alias within quotes.
alias gs="echo -e 'All right! What is going on here? 😕\n\n' && git status" # Provides git status.
alias gcb="echo -e 'A new branch is sprouting on your Git tree 🌳\n\n' && git checkout -b" # Switch to and create branch. Append branch name to the end of this alias.
alias gsb="echo -e 'Let us climb to that branch! 🌴\n\n' && git checkout" # Switched to branch specified after this alias.
alias gc="echo -e 'Let us The Sixth Day this shhhh! 🕕\n\n' && git clone" # Clones a remote repo. Append repo URL or SSH to this alias.
alias gpu="echo -e 'What are they doing up there? Pull it down! 😶‍🌫️\n\n' && git pull" # Pulls changes from remote branch to local.
alias gp="echo -e 'Alright, we done. Push it up! 🫷⬆️\n\n' && git push" # Pushes local changes to origin.

# SETUP LOCAL CODEBASE TO REMOTE REPO
# ----------------------------------------------
alias gin="git init" # Adds git initialized directory to local codebase.
### Commit changes
alias gcf="git commit -m 'first commit'"
### Make sure on main branch
alias gbm="git branch -M main"
alias grao="git remote add origin"
### Push local changes to remote main branch
alias gpom="git push -u origin main"

# NEXTJS ALIASES
# ----------------------------------------------
## Add name of project after nxtcna or nxtcnat
alias nxtcna="yarn create next-app"
alias nxtcnat="yarn create next-app --typescript"
alias nxtdev="yarn dev"
alias nxtbuild="yarn build && yarn export"
alias nxtstart="yarn start"
alias nxtlint="yarn lint"

# YARN ALIASES
# ----------------------------------------------
alias y="yarn"
alias yi="yarn init -y"
alias ya="yarn add"
alias yr="yarn remove"
alias yad="yarn add -D"
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yu="yarn upgrade-interactive --latest"
alias ygu="yarn global upgrade"
alias yl="yarn list --depth=0"
alias ygl="yarn global list --depth=0"
alias yo="yarn outdated"

# NPM ALIASES
# ----------------------------------------------
alias nconf="npm init @eslint/config"
alias ni="npm init"
alias nr="npm run"
alias nrb="npm run build"
alias nrs="npm run start"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrw="npm run watch"
alias nt="npm test"
alias nig="npm install -g"
alias nin="npm install"
alias nid="npm install --save-dev"
alias nie="npm install --save-dev --save-exact"
alias nun="npm uninstall"
alias ning="npm install -g"
alias nung="npm uninstall -g"
alias nu="npm update"
alias nri="npm run upgrade-interactive"
alias no="npm outdated"
alias np="npm prune"
alias nc="npm cache clean"
alias na="npm audit"
alias naf="npm audit fix"

# HUSKY ALIASES
# ----------------------------------------------
alias hi="npm install --save-dev husky"
alias hin="npx husky init"
alias hp="npm run prepare"

huskySet() {
  echo "Install Husky as a dev dependancy."
  npm install --save-dev husky
  echo "Initialize Husky."
  npx husky init
  echo "Create pre-commit file."
  npm run prepare
}

# ADD VSCODE AS DEFAULT EDITOR
# ----------------------------------------------
export EDITOR="code"

# NEEDED FOR NVM
# ----------------------------------------------
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionsource /usr/local/opt/nvm/nvm.sh
