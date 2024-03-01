# PATH TO OH MY ZSH INSTALLATION
# ----------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# ZSH THEMES
# ----------------------------------------------
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME="random"

# ZSH PLUGINS
# ----------------------------------------------
plugins=(
  git
  node
  npm
  nvm
  history
  vscode
  macos
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Change highlight color for ZSH Auto Suggest plugin
# ----------------------------------------------
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"

# SOURCE
# ----------------------------------------------
source $ZSH/oh-my-zsh.sh

# MACOSX ALIASES
# ----------------------------------------------
hiddenOn() {
  echo "Show hidden folder on your Mac. 👓👓"
  defaults write com.apple.Finder AppleShowAllFiles true
  echo "***************************************************"
  echo "Refresh finder window. 🪟"
  echo "***************************************************"
  killall Finder ;
  echo "DONE! 😃"
} # Show hidden folders in MacOSX.

hiddenOff() {
  echo "Hide hidden folder on your Mac. 👓"
  defaults write com.apple.Finder AppleShowAllFiles true
  echo "***************************************************"
  echo "Refresh finder window. 🪟"
  echo "***************************************************"
  killall Finder ;
  echo "DONE! 😃"
} # Hide hidden folders in MacOSX.

# VSCODE & CLI ALIASES
# ----------------------------------------------
alias c="echo -e 'Open up vscode in current working directory!! 👐\n\n' && code ." # Opens up vscode in current working directory.
alias cc="echo -e 'Open up vscode in specific directory!! 👐\n\n' && code $1" # Append directory or path to open up vscode in said directory.
alias codedir="code ${HOME}/Library/'Application Support'/Code/User" # Opens up vscode directory containing settings.json, keybindings and snippets.
alias up="echo -e 'Going up a directory, boiiii! 🛸\n\n' && cd .." # Up one directory.
alias in="echo -e 'Getting all up in that directory! 🚪\n\n' && cd" # Out to root directory or if you follow this command with a directory name or path it moves into said directory. Use ZSH autosuggest to append directory name to end of this alias.
alias md="echo -e 'You make that folder! 📁\n\n' && mkdir $1" # Create a directory. Append directory name to this alias.
alias dd="echo -e 'Nobody wants that folder! 🤮\n\n' && rm -r" # Remove a directory recursively (Removes all sub-directories and files). Use ZSH autosuggest to append directory name to end of this alias.
alias mf="echo 'Populating your computer with little baby files! 👶\n\n' && touch $1" # Create a file. Append the name of the file (including file type) to the end of this alias.
alias df="echo -e 'The milk was a bad choice, remove that file! 🥛\n\n' && rm" # Remove a file. Use ZSH autosuggest to append file name to the end of this alias.
alias m="echo -e 'Just keep moving, just keep moving! 🐠\n\n' && mv" # Move a file. Append the file name and destination path to the end of this alias.
alias c="echo -e 'Copying that file?? How about you be original! ©️\n\n' && cp" # Copy a file. Append the file name and destination path to the end of this alias.
alias l="echo -e 'Ooooo, what is in here?! 🧐\n\n' && ls" # List contents of current directory.
alias la="echo -e 'Ooooo, piece a candy! 🍬\n\n' && ls -a" # Lists all contents including hidden files and admin permissions.
alias p="echo -e 'Where are we again? 😳\n\n' && pwd" # Displays your current directory.
alias cl="echo -e 'Time to clean up, it is messy in here!! 🧹\n\n' && clear" # Clears terminal/command window.

makeEn() {
  echo "Let us create a folder then enter it!"
  if [ ! -n "$1" ]; then
    echo "*************************************************"
    echo "Enter a directory name, silly! 😠😠"
    echo "*************************************************"
  elif [ -d $1 ]; then
    echo "*************************************************"
    echo "\`$1' already exists, oh my! 🫣🫣"
    echo "*************************************************"
  else
    mkdir $1 && cd $1
  fi
} # Create a directory and cd into it.

# HOMEBREW ALIASES
# ----------------------------------------------
alias bl="echo -e 'Let us see what brews you have in your collection. 📚\n\n' && brew list" # Lists all Homebrew packages.

brewUp() {
  echo "Your brew is looking a bit sour, better refresh that! 🍻🍻"
  echo "***************************************************"
  echo "Updating taps. 🔧🛁"
  echo "***************************************************"
  brew update
  echo "***************************************************"
  echo "Upgrading formulae. 📝📝"
  echo "***************************************************"
  brew upgrade
  echo "***************************************************"
  echo "Fixing any errors and clearing outdated files. 🏥🌡️"
  echo "***************************************************"
  brew doctor
} # Updates/upgrades Homebrew packages, removes outdated files, and check system for problems.

# WSL/UBUNTU ALIASES
# ----------------------------------------------
alias -g uup="echo -e 'Your linux packages are looking a bit dated... 👴\n\n' && sudo apt-get update && sudo apt-get upgrade -y" # Updates/upgrade linux packages and prompt "yes" anytime command asks for it.

# ZSH/OH-MY-ZSH ALIASES
# ----------------------------------------------
alias zed="echo -e 'Editing your ZSH config, eh? 👨‍🔬\n\n' && code ${HOME}/.zshrc" # Edit global ZSH config.
alias zre="echo -e 'It is annoying, but we have to refresh the config EVERYTIME we make a change... 🙃\n\n' && source ${HOME}/.zshrc" # Reloads ZSH config after changes.

zshSet() {
  echo "Get ready for some linuxy goodness!! 🍕🍕"
  echo "***************************************************"
  echo "First, let us check to see if ZSH is installed. 🤔👓"
  echo "***************************************************"
  zsh --version
  echo "***************************************************"
  echo "Set ZSH as the default shell! 😀😀"
  echo "***************************************************"
  chsh -s $(which zsh)
  echo "***************************************************"
  echo "Install Oh My ZSH!! 🤩🤩"
  echo "***************************************************"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
} # Check if ZSH is installed, set ZSH as the default shell, and then install Oh My ZSH.

# SSH ALIASES
# ----------------------------------------------
alias shao="echo -e 'Making sure you are in the correct directory before creating some SSH stuff! 🔍\n\n' && cd ${HOME}/.ssh" # Navigate to global ssh directory.
alias shacon="echo -e 'Open that config... SHHHHH! 🤫\n\n' && code ${HOME}/.ssh/config" # Edit global ssh configuration using vscode.
alias shagen="echo -e 'The key to your heart :) 💞\n\n' && ssh-keygen -t ed25519 -C" # Creates a local SSH key if followed by filename (i.e. personal-github).
alias shagent="echo -e 'I do not know what this is, but we gotta do it or else the next step will not work... 😕\n\n' && eval '$(ssh-agent -s)'" # Starts SSH agent.
alias shakey="echo -e 'The name is Bond, James Bond... and I need that key! 🔑\n\n' && ssh-add -K ${HOME}/.ssh/$1" # Adds SSH key to agent. Make sure you add filename created with skgen alias to the end of this alias.
alias shatest="echo -e 'Did it work?? ✋\n\n' && ssh -T git@$1" # Test your connection. Make sure you add your Host name created during the config file setup, to the end of this alias.

# GULP ALIASES
# ----------------------------------------------
alias gu="echo -e 'GULP! 😧\n\n' && gulp" # Runs gulp command.
alias gufr="echo -e 'LES GULP!? 👨‍🎨\n\n' && gulp devFr" # Runs French gulp command.
alias gut="echo -e 'Let us check out that work! 🤑\n\n' && gulp --template $1" # Runs development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gutfr="echo -e 'Tu es... Grande poulette! 👨‍🎨\n\n' && gulp devFr --template $1" # Runs French development task on HTML template if followed by template name. If none provided, default.html template will be used.
alias gub="echo -e 'Well you are just a cute little Bob the builder! 👷‍♂️\n\n' && gulp build" # Runs build tasks.
alias gubfr="echo -e 'Es que je puis aller aux toilettes! 👨‍🎨\n\n' && gulp buildFr" # Runs the French build tasks.
alias gucl="echo -e 'Clean up, clean up, everybody clean up! 🎵\n\n' && gulp clean" # Runs the clean or delete task for dev and prod directories.

# GIT ALIASES
# ----------------------------------------------
alias gcon="echo -e 'Opening your global Git Config file. 🎛️\n\n' && code ${HOME}/.gitconfig" # Opens global gitconfig file in vscode.
alias gig="echo -e 'Opening up your global Git Ignore file. 🎛️\n\n' && code ${HOME}/.gitignore_global" # Opens global gitconfig file in vscode.
alias gs="echo -e 'All right! What is going on here? 😕\n\n' && git status" # Provides git status.
alias gcb="echo -e 'A new branch is sprouting on your Git tree 🌳\n\n' && git checkout -b $1" # Switch to and create branch. Append branch name to the end of this alias.
alias gsb="echo -e 'Let us climb to that branch! 🌴\n\n' && git checkout $1" # Switched to branch specified after this alias.
alias gc="echo -e 'Let us The Sixth Day this shhhh! 🕕\n\n' && git clone $1" # Clones a remote repo. Append repo URL or SSH to this alias.
alias gpu="echo -e 'What are they doing up there? Pull it down! 😶‍🌫️\n\n' && git pull" # Pulls changes from remote branch to local.
alias gp="echo -e 'Alright, we done. Push it up! 🫷⬆️\n\n' && git push" # Pushes local changes to origin.

gitCom() {
  echo "You have done some great work! Now let us send that up to the repo for safe keeping. ✅✅"
  echo "***************************************************"
  echo "First, let us check the status of the local work vs remote repo. 🌱🌱"
  echo "***************************************************"
  git status
  echo "***************************************************"
  echo "Then, let us add all of the changed files to staging. 🪜🪜"
  echo "***************************************************"
  git add .
  echo "***************************************************"
  echo "Now, checking to see if you created a commit message. ❓❓"
  echo "***************************************************"
  if [ ! -n "$1" ]; then
    echo "*************************************************"
    echo "Enter a commit message, silly! 😠😠"
    echo "*************************************************"
  else
    echo "*************************************************"
    echo "Great message! Committing now. 🗒️🗒️"
    echo "*************************************************"
    git commit -m $1
    echo "*************************************************"
    echo "All checks cleared (husky, git staged), pushing now! ⬆️⬆️"
    echo "*************************************************"
    git push
  fi
  echo "***************************************************"
  echo "Let us get some details about the latest commit. 🖨️🖨️"
  echo "***************************************************"
  git log
} # Adds all changed files to staging and generates a commit with message. Append the git commit message to the end of this function alias within quotes. If all checks passed, it then pushes to remote repo.

gitNew() {
  echo "You just created a local project and a blank remote repo. Let us connect the two! 👊👊"
  echo "***************************************************"
  echo "First, let us create a template README for the repo. 📖📖"
  echo "***************************************************"
  echo "# New Repo" >> README.md
  echo "***************************************************"
  echo "Now, let us initiate a git directory in your local project. 📂📂"
  echo "***************************************************"
  git init
  echo "***************************************************"
  echo "Adding README.md to staging. 👩‍🎤👩‍🎤"
  echo "***************************************************"
  git add README.md
  echo "***************************************************"
  echo "Create a commit message for the first commit to remote repo. 🗒️🗒️"
  echo "***************************************************"
  git commit -m "Created new local project"
  echo "***************************************************"
  echo "Set the default branch of the project to main. 🌳🌳"
  echo "***************************************************"
  git branch -M main
  echo "***************************************************"
  echo "Now, checking to see if you added appended the remote repo name to this command. ❓❓"
  echo "***************************************************"
  if [ ! -n "$1" ]; then
    echo "*************************************************"
    echo "Enter the remote repo name, silly! 😠😠"
    echo "*************************************************"
  else
    echo "*************************************************"
    echo "Great, you added the remote repo name, now we will add remote repo as the origin. 😀😀"
    echo "*************************************************"
    git remote add origin git@dgit:evanmarshall-dev/"$1".git
    echo "*************************************************"
    echo "Push committed local file to the remote repo. ⬆️⬆️"
    echo "*************************************************"
    git push -u origin main
  fi
} # Connect a local project to an empty remote git repo, add template README file, stage README, commit README, and then push README to the remote repo or origin.

# NEXTJS ALIASES
# ----------------------------------------------
alias nxi="npx create-next-app@latest" # Launch the config setup for a NextJS app.

# YARN ALIASES
# ----------------------------------------------
alias y="yarn install" # Install yarn packages.
alias yi="yarn init -y" # Initialize yarn with yarn.lock file in current project.
alias ya="yarn add $1" # Add an yarn package and apply as a project dependancy. Append the package name to the end of the alias.
alias yr="yarn remove $1" # Remove an yarn package. Append the package name to the end of the alias.
alias yad="yarn add -D $1" # Add an yarn package and apply as a dev dependancy. Append package name to the end of the alias.
alias yga="yarn global add $1" # Add an yarn package and have it installed globally. Append the package name to the end of the alias.
alias ygr="yarn global remove $1" # Remove a globally installed yarn package. Append the package name to the end of the alias.
alias yu="yarn upgrade-interactive --latest" # Upgrade all yarn packages to their latest version.
alias ygu="yarn global upgrade" # Upgrade global yarn packages.
alias yl="yarn list --depth=0" # List local yarn packages.
alias ygl="yarn global list --depth=0" # List global yarn packages.
alias yo="yarn outdated" # List outdated yarn packages.

# NPM ALIASES
# ----------------------------------------------
alias ni="npm init" # Initialize npm in current project with a package.lock file.
alias nu="npm-check -u" # Update npm packages using interactive guide.
alias no="npm outdated" # List all outdated npm packages.
alias np="npm prune" # Removes extraneous npm packages.
alias na="npm audit" # Run a security audit for installed npm packages.
alias naf="npm audit fix" # Tries to fix any security vulnerabilities.
alias nig="npm install -g $1" # Install an npm package globally. Append package name to the end of the alias.
alias nin="npm install $1" # Install npm package as a project dependancy (Anything that is needed in production). Append package name to the end of the alias.
alias nid="npm install --save-dev $1" # Install an npm package as a dev dependancy (Only needed in development). Append package name to the end of the alias.
alias nie="npm install --save-dev --save-exact $1" # Install an npm package as a dev dependancy and pin it at the current version. Append the package name to the end of the alias.
alias nun="npm uninstall $1" # Uninstall npm packages. Append the package name to the end of the alias.
alias ncc="npm cache clean" # Deletes all of the data in the cache folder.
alias nconf="npm init @eslint/config" # Initializes eslint in the project and runs the setup/config process.

# HUSKY ALIASES
# ----------------------------------------------
huskySet() {
  echo "Let us setup and configure Husky! 🐕🐕"
  echo "***************************************************"
  echo "Install Husky as a dev dependancy. 🧒🧒"
  echo "***************************************************"
  npm install --save-dev husky
  echo "***************************************************"
  echo "Initialize Husky. 🛫🛫"
  echo "***************************************************"
  npx husky init
  echo "***************************************************"
  echo "Create pre-commit file. 😁😁"
  echo "***************************************************"
  npm run prepare
} # Installs Husky, initializes it and then creates a pre-commit file.

# TODO: Modify the following code to add lint-staged to the husky pre-commit. Then add to above alias function.
## echo "# New Repo" >> README.md

# NEEDED FOR NVM
# ----------------------------------------------
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completionsource /usr/local/opt/nvm/nvm.sh
