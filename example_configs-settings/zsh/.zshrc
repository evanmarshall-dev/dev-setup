# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  node
  npm
  nvm
  sudo
  web-search
  history
  macos
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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

# ALL ALIASES

# CLI ALIASES
# ----------------------------------------------
alias up="echo 'Going up a directory, boiiii!' && cd .." # Up one directory.
alias in="echo 'Getting all up in that directory!' && cd" # Out to root directory or if you follow this command with a directory name or path it moves into said directory.
alias md="echo 'You make that folder!' && mkdir" # Create a directory.
alias dd="echo 'Nobody wants that folder!' && rm -r" # Remove a directory recursively (Removes all sub-directories and files).
alias mf="echo 'Populating your computer with little baby files!' && touch" # Create a file.
alias df="echo 'The milk was a bad choice, remove that file!' && rm" # Remove a file.
alias m="echo 'Just keep moving, just keep moving!' && mv" # Move a file.
alias c="echo 'Copying that file?? How about you be original!' && cp" # Copy a file.
alias l="echo 'Ooooo, what is in here?!' && ls" # List contents of current directory.
alias la="echo 'Ooooo, piece a candy!' && ls -a" # Lists all contents including hidden files and admin permissions.
alias p="echo 'Where are we again?' && pwd" # Displays your current directory.
alias cl="echo 'Time to clean up, it is messy in here!!' && clear" # Clears terminal/command window.

# HOMEBREW ALIASES
# ----------------------------------------------
alias -g bup="echo 'Your brew is looking a bit sour, better refresh that!' && brew update && brew upgrade && brew cleanup && brew doctor" # Updates/upgrades Homebrew packages, removes outdated files, and check system for problems.
alias bl="echo 'Let us see what brews you have in your collection.' && brew list" # Lists all Homebrew packages.

# WSL/UBUNTU ALIASES
# ----------------------------------------------
alias -g uup="echo 'Your linux packages are looking a bit dated...' && sudo apt-get update && sudo apt-get upgrade -y" # Updates/upgrade linux packages and prompt "yes" anytime command asks for it.

# ZSH/OH-MY-ZSH ALIASES
# ----------------------------------------------
alias zin="echo 'Get ready for some linuxy goodness!!' && sh -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'" # Installs Oh My ZSH.
alias zed="echo 'Editing your ZSH config, eh?' && code ~/.zshrc" # Edit global ZSH config.
alias zre="echo 'It is annoying, but we have to refresh the config EVERYTIME we make a change...' && source ~/.zshrc" # Reloads ZSH config after changes.

# SSH ALIASES
# ----------------------------------------------
alias shao="echo 'Making sure you are in the correct directory before creating some SSH stuff!' && cd ~/.ssh" # Navigate to global ssh directory.
alias shacon="echo 'Open that config... SHHHHH!' && code ~/.ssh/config" # Edit global ssh configuration using vscode.
alias shagen="echo 'The key to your heart :)' && ssh-keygen -t ed25519 -C" # Creates a local SSH key if followed by filename (i.e. personal-github).
alias shagent="echo 'I do not know what this is, but we gotta do it or else the next step will not work...' && eval '$(ssh-agent -s)'" # Starts SSH agent.
alias shakey="echo 'The name is Bond, James Bond... and I need that key!' && ssh-add -K ~/.ssh/" # Adds SSH key to agent. Make sure you add filename created with skgen alias to the end of this alias.
alias shatest="echo 'Did it work??' && ssh -T git@" # Test your connection. Make sure you add your Host name created during the config file setup, to the end of this alias.

# GULP ALIASES
# ----------------------------------------------
alias gu="echo 'GULP!' && gulp" # Runs gulp command.
alias gufr="echo 'LES GULP!?' && gulp devFr" # Runs French gulp command.
alias gut="echo 'Let us check out that work!' && gulp --template" # Runs development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gutfr="echo 'Tu es... Grand poulette!' && gulp devFr --template" # Runs French development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gub="echo 'Well you are just a cute little Bob the builder!' && gulp build" # Runs build tasks.
alias gubfr="echo 'Es que je puis aller aux toilettes!' && gulp buildFr" # Runs the French build tasks.
alias gucl="echo 'Clean up, clean up, everybody clean up!' && gulp clean" # Runs the clean or delete task for dev and prod directories.

# GIT ALIASES
# ----------------------------------------------
alias gcon="echo 'Opening your global Git Config file.' && code ~/.gitconfig" # Opens global gitconfig file in vscode.
alias gig="echo 'Opening up your global Git Ignore file.' && code ~/.gitignore_global" # Opens global gitconfig file in vscode.
alias gcm="echo 'A little shortcut to speed up your commit process.' && git add . && git commit -m" # Adds all changed files to staging and generates a commit with message. Append the git commit message to the end of this alias within quotes.
alias gs="echo 'All right! What is going on here?' && git status" # Provides git status.
alias gcb="echo 'A new branch is sprouting on your Git tree :)' && git checkout -b" # Switch to and create branch. Append branch name to the end of this alias.
alias gsb="echo 'Let us climb to that branch!' && git checkout" # Switched to branch specified after this alias.
alias gc="echo 'Let us The Sixth Day this shhhh!' && git clone" # Clones a remote repo. Append repo URL or SSH to this alias.
alias gpu="echo 'What are they doing up there? Pull it down!' && git pull" # Pulls changes from remote branch to local.
alias gp="echo 'Alright, we done. Push it up!' && git push" # Pushes local changes to origin.

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

alias test="echo 'does this work?'"

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

# NODEMON ALIASES
# ----------------------------------------------
alias nd="nodemon"

# HUSKY ALIASES
# ----------------------------------------------
alias hi="npm install --save-dev husky"
alias hin="npx husky init"
alias hp="npm run prepare"

# Remove system and username from terminal and change prompt
prompt_context() {
  # Custom (Random emoji)
  emojis=("⚡️" "🔥" "💀" "👑" "😎" "🐸" "🐵" "🦄" "🌈" "🍻" "🚀" "💡" "🎉" "🔑" "🇹🇭" "🚦" "🌙")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}

# Add vscode as default editor.
export EDITOR="code"

# Needed for nvm.
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionsource /usr/local/opt/nvm/nvm.sh
