# Evan's Front End Web Development Setup

![The classic Hudson's Bay Company logo and crest](https://canadaalive.files.wordpress.com/2014/06/hbc-hubsons-bay-company-logo-11.jpg)

## MacOS (February 2024)

### Preparing the Computer

- Setup Github account.

- Activate Settings Sync in vscode and link to your Github account.

- Install Homebrew

  - Open up your terminal and make sure you are in the user directory (i.e. mine is Macintosh HD/Users/evanmarshall)
  - Type the below code and press ENTER/RETURN:

  ```node
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  ```

  - It is a good habit to update Homebrew after any change. You can do this by running the following command: `brew update`.

- Install vscode

  - Make sure you are in the same directory and type the below code followed by ENTER/RETURN:

  ```node
  brew install --cask visual-studio-code
  ```

- Install terminal applications

  - In user directory, type the following code followed by ENTER/RETURN:

  ```node
  brew install git
  brew install nvm
  ```

  - See extras below.

- Install ZSH (optional)

  - Type the following code in terminal:

  ```node
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  ```

- Install terminal/ligature-ready fonts

  - In your user directory type:

  ```node
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
  ```

- Follow along with my vscode settings.json after installing the fonts and ZSH. We will add on to these settings as we continue on with the following setup. The example settings.json is referenced [HERE](#vscode-settings)

- Git Setup

  - Setup your Github username and email:

  ```node
  git config --global user.name <replace with your username here>
  git config --global user.email <replace with you@your-domain.com>
  ```

  - The first time you run the above commands will create a.gitconfig file in your root directory. The example gitconfig file are referenced [HERE](#git-config). Instead of writing more commands in the terminal we will follow along using that example to create the rest of the config.

  - Create a file in your root directory called `.gitignore_global` (let's practice a common terminal command to create this file: `touch .gitignore_global`) and run the following command:

  ```node
  git config --global core.excludesfile ~/.gitignore_global
  ```

  - We will use and modify my example gitignore file to suit your needs. The example is referenced [HERE](#git-ignore)

- Node & NVM Setup

  - You already installed NVM via Homebrew in a previous step, but it still requires some configuration and install of Node Package Manager (npm).
  - You can do this with the following commands in terminal:

  ```node
  echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
  source ~/.zshrc
  ```

  - Now to install the latest version of node using Node Package Manager (nvm):

  ```node
  nvm install --lts

  # Check versions to confirm install.
  node -v && npm -v

  # Make sure npm is using the latest version, globally.
  npm install -g npm@latest
  ```

  - For managing node packages I prefer YARN as it is newer, easier to use, and more secure. To install yarn type the following command in the terminal:

  ```node
  npm install -g yarn
  yarn -v
  ```

  **_All of the above will make more sense as you continue with coding, utilizing node packages, version controlling and backups with Git, workflow automation, and making your development environment pretty/fit your own style._**

- Setup and configure your AI assistant using Cody AI vscode extension.

  - First install the vscode extension. [THIS ONE](https://marketplace.visualstudio.com/items?itemName=sourcegraph.cody-ai).
  - As soon as it installs it should prompt you to open their webpage and setup an account. I recommend signing in using your Github account and following the remaining setup prompts. I also recommend **NOT** saying you are setting it up for work because they will bombard your email trying to sell you features. After finishing setup it should bring you back to vscode.
  - You can use ChatGPT (openAI), or I have been testing with Ollama (Facebook's AI). If using Ollama, you need to download the app, found [HERE](https://ollama.ai/). You will probably need HBC Temp Admin access in order to complete the Ollama install.
  - You will want to type the following in the terminal at the root directory:

  ```node
  ollama pull codellama:7b-code
  ```

  - You will now see an icon in your side vscode dashboard for Cody AI. Click that icon. Click "Settings" in the bottom part of the Cody chat window. Click "cody extension settings."
  - Once in the extension settings, scroll down to where it says: Cody > Autocomplete > Advanced: Provider. Select **ollama-experimental** from the list.
  - Now you are all setup! We can do a couple of demos to demonstrate how it works and how it will help assist you with coding.

- Linting, Formatting, and Pre-Committing You Code (TBD)

#### For Reference

Anytime you make a change to the zsh config file (.zshrc, which should be in the user directory) you want to type `source ~/.zshrc`, which reloads the configuration in your workspace.

Updates to ZSH and plugins, type: `omz update`.

My config file example for Oh My ZSH (omz) can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/examples/zsh/.zshrc). Configuration, theme, aliases, plugins, and more setup for Oh My ZSH.

##### Vscode Settings

My settings file example for vscode can be found [HERE](<[https://update-with-link-to-project-guide](https://github.com/evanmarshall-dev/dev-setup/blob/main/examples/vscode/settings.json)>). Controls all settings for vscode such as fonts, custom extension settings, layout, etc.

##### Git Config

My git config example can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/examples/git/.gitconfig). Links you local development environment to your Github account info.

##### Git Ignore

My git ignore example can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/examples/git/.gitignore_global). When committing files to Github there are sometimes large libraries or files, which are not needed. Gitignore prevents these files/changes from being pushed to your remote Github repository.

#### Recommended add-ons/plug-ins

| 1 | [ZSH Auto Suggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) | As you type commands in terminal ZSH will suggest completions. It helps speed up the process for common terminal commands. Make sure you follow the install instructions for Oh My ZSH.

| 2 | [ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) | As you type commands ZSH will color code syntax for different types of code and will correct you on syntax errors. Make sure you follow the install instructions for Oh My ZSH.

| 3 | [Securing Your Connection to Github Using SSH](https://www.darraghoriordan.com/2021/05/04/configure-multiple-github-accounts-one-computer) | You can setup multiple instances of Github connections in your local environment (i.e. One for work and one for school) and you should also generate SSH keys to secure your connection to your Github remote repositories as well. This could warrant a whole new tutorial as it is a sizeable topic.

| 4 | [More Advanced Development Setups using Gulp](https://github.com/evanmarshall-dev/dev-setup) | Again, this could warrant another tutorial, but basically gulp helps you automate tedious development tasks and speeds up your development workflow/efficiency. It can aid with tasks such as processing SASS code into CSS, minifying code, compressing/optimizing images, preparing code for production, etc.
