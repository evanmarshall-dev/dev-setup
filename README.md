# Evan's Front End Web Development Setup

![The classic Hudson's Bay Company logo and crest](https://canadaalive.files.wordpress.com/2014/06/hbc-hubsons-bay-company-logo-11.jpg)

## MacOS (February 2024)

### Preparing the Computer

- Setup [Github](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) account.

- Install [Homebrew](https://brew.sh/)

  - Open up your terminal and make sure you are in the user directory (i.e. mine is Macintosh HD/Users/evanmarshall)
  - Type the below code and press ENTER/RETURN:

  ```javascript
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  - It is a good habit to update Homebrew after any change. You can do this by running the following command: `brew update`.

- Install [vscode](https://formulae.brew.sh/cask/visual-studio-code)

  - Make sure you are in the same directory and type the below code followed by ENTER/RETURN:

  ```javascript
  brew install --cask visual-studio-code
  ```

  - In order to use the `code` shortcut in the terminal you need to install the code command to the PATH (MacOSX only). You do this by pressing the following keyboard shortcut in vscode:

  ```javascript
  CMD + SHIFT + P; // To open up the command palette.
  // Type in the following command to complete:
  // Shell Command: Install 'code' command in PATH
  ```

- Install terminal applications

  - In user directory, type the following code followed by ENTER/RETURN:

  ```javascript
  brew install git
  brew install nvm
  ```

  - See extras below.

- Install [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh) (omz)

  - Type the following code in terminal:

  ```javascript
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  ```

- Install terminal/ligature-ready fonts

  - In your user directory type:

  ```javascript
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
  ```

  - Or go to [FiraCode Font](https://github.com/tonsky/FiraCode) to download another great ligature-ready font.

- Follow along with my vscode settings.json after installing the fonts and ZSH. We will add on to these settings as we continue on with the following setup. The example settings.json is referenced [HERE](#vscode-settings)

- Activate [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) in vscode and link to your Github account.

- Git Setup

  - Setup your Github username and email within local development environment:

  ```javascript
  git config --global user.name // add your email after user.name
  git config --global user.email // add your email after user.email
  ```

  - The first time you run the above commands will create a.gitconfig file in your root directory. The example gitconfig file are referenced [HERE](#git-config). Instead of writing more commands in the terminal we will follow along using that example to create the rest of the config.

  - Create a file in your root directory called `.gitignore_global` (let's practice a common terminal command to create this file: `touch .gitignore_global`) and run the following command:

  ```javascript
  git config --global core.excludesfile ~/.gitignore_global
  ```

  - We will use and modify my example gitignore file to suit your needs. The example is referenced [HERE](#git-ignore)

- Node & NVM Setup

  - You already installed NVM via Homebrew in a previous step, but it still requires some configuration and install of Node Package Manager (npm).
  - You can do this with the following commands in terminal:

  ```javascript
  echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
  source ~/.zshrc
  ```

  - Now to install the latest version of node using Node Package Manager (nvm):

  ```javascript
  nvm install --lts

  // Check versions to confirm install.
  node -v && npm -v

  // Make sure npm is using the latest version, globally.
  npm install -g npm@latest
  ```

  - For managing node packages you can use YARN or simply the global install of NPM from above. To install yarn type the following command in the terminal (It is not a problem to have them both installed):

  ```javascript
  npm install -g yarn
  yarn -v
  ```

  **_All of the above will make more sense as you continue with coding, utilizing node packages, version controlling and backups with Git, workflow automation, and making your development environment pretty/fit your own style._**

- Setup and configure your AI assistant using Cody AI vscode extension.

  - First install the vscode extension. [THIS ONE](https://marketplace.visualstudio.com/items?itemName=sourcegraph.cody-ai).
  - As soon as it installs it should prompt you to open their webpage and setup an account. I recommend signing in using your Github account and following the remaining setup prompts. I also recommend **NOT** saying you are setting it up for work because they will bombard your email trying to sell you features. After finishing setup it should bring you back to vscode.
  - You can use ChatGPT (openAI), or I have been testing with Ollama (Facebook's AI). If using Ollama, you need to download the app, found [HERE](https://ollama.ai/). You will probably need HBC Temp Admin access in order to complete the Ollama install.
  - You will want to type the following in the terminal at the root directory:

  ```javascript
  ollama pull codellama:7b-code
  ```

  - You will now see an icon in your side vscode dashboard for Cody AI. Click that icon. Click "Settings" in the bottom part of the Cody chat window. Click "cody extension settings."
  - Once in the extension settings, scroll down to where it says: Cody > Autocomplete > Advanced: Provider. Select **ollama-experimental** from the list.
  - Now you are all setup! We can do a couple of demos to demonstrate how it works and how it will help assist you with coding.

- Linting, Formatting, and Pre-Committing You Code (TBD)

#### For Reference

Anytime you make a change to the zsh config file (.zshrc, which should be in the user directory) you want to type `source ~/.zshrc`, which reloads the configuration in your workspace.

Updates to ZSH and plugins, type: `omz update`.

My config file example for Oh My ZSH (omz) can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/example_configs-settings/zsh/.zshrc). Configuration, theme, aliases, plugins, and more setup for Oh My ZSH.

##### Vscode Settings

My settings file example for vscode can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/example_configs-settings/vscode/settings.json). Controls all settings for vscode such as fonts, custom extension settings, layout, etc.

##### Git Config

My git config example can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/example_configs-settings/git/.gitconfig). Links you local development environment to your Github account info.

##### Git Ignore

My git ignore example can be found [HERE](https://github.com/evanmarshall-dev/dev-setup/blob/main/example_configs-settings/git/.gitignore_global). When committing files to Github there are sometimes large libraries or files, which are not needed. Gitignore prevents these files/changes from being pushed to your remote Github repository.

#### VSCODE Keyboard Shortcuts & Instructions

You can find a list of keyboard shortcut by clicking the cog icon in vscode action bar, but the following are some useful ones:

- Open the integrated terminal with `` CTRL + `  ``.
- Close the current working file with `CMD + W`.
- Save the current working file with `CMD + S`.
- Show recently opened files with `CMD + P`.
  - If you type `@` following the `CMD + P` command, you will be able to search for specific elements within the current working file.
  - You can also type `CMD + SHIFT + .` to perform the above command within the current working file directly (not the top search panel).
  - If you type `#` after the `CMD + P` command, you will be able to search the current working file by symbols.
- You can highlight the current line using `CMD + L` and if you run the same command again it will highlight the next line (This command is good when you want to comment out multiple lines when you follow-up using the command `CMD + /`).
- If you highlight an element and press `CMD + D` it will highlight the next instance of the highlighted element. This can be used like the find and replace command (`CMD + F`).
- If you hold down `OPTION` and then click in the file you can place a cursor in multiple spots.
- If you know the line number in the code and want to search for a specific line of code press `CTRL + G` followed by the line number.
- If you want to undo the last action press `CMD + Z`.
- If you want to undo the last undo then press `CMD + SHIFT + Z`.
- If you want to cut the line where the cursor is then press `CMD + X`.
- If you want to move a whole line up or down then press `OPTION + ARROW-UP || ARROW-DOWN`.
- If you want to copy a full line up or down then press `SHIFT + OPTION + ARROW-DOWN || ARROW-UP`.
- To open up the command palette press `CMD + SHIFT + P`.
- To fold or un-fold the current block of code press `CMD + OPTION ] || [`.
- With some configuration in settings.json, code actions extension and key bindings settings you can close the file tree and action panel by pressing `OPTION + B`.
- To bring up intellisense and completions for the currently highlighted element press `CTRL + SPACE`.
- If you have the inside of parenthesis of a function selected and press `CTRL + SHIFT + SPACE` then it will provide suggested parameters/arguments for the function.
- While inside the terminal if you press `CMD + ARROW-RIGHT || ARROW-LEFT` the cursor will jump to the beginning or end of the current command.

Notes:

- **_Typescript_** tends to provide better intellisense due to it having explicit types defined.
- Opening command palette and typing `EMMET: Balance (outward)` will select all sibling elements within a parent then opening command palette and typing `EMMET: Wrap with Abbreviation` will wrap all selected tags with one you specify.
- If you want to see all the references to a particular element in code, you can right-click and select `Peek > Peek References`. If you want to see where the original code was implemented you would select `Peek > Peek Implementations`. You can also follow the same process for **Definitions** and **Type Definitions**.
- If you want to rename a function for example, you would select `Peek > Peek Implementations` then **Right** click the function name and select `Rename Symbol`. This is a safer way to rename all related implementations of an element in code.

#### Recommended add-ons/plug-ins

| 1 | [ZSH Auto Suggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) | As you type commands in terminal ZSH will suggest completions. It helps speed up the process for common terminal commands. Make sure you follow the install instructions for Oh My ZSH.

| 2 | [ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) | As you type commands ZSH will color code syntax for different types of code and will correct you on syntax errors. Make sure you follow the install instructions for Oh My ZSH.

| 3 | [Securing Your Connection to Github Using SSH](https://www.darraghoriordan.com/2021/05/04/configure-multiple-github-accounts-one-computer) | You can setup multiple instances of Github connections in your local environment (i.e. One for work and one for school) and you should also generate SSH keys to secure your connection to your Github remote repositories as well. This could warrant a whole new tutorial as it is a sizeable topic.

| 4 | [More Advanced Development Setups using Gulp](https://github.com/evanmarshall-dev/dev-setup) | Again, this could warrant another tutorial, but basically gulp helps you automate tedious development tasks and speeds up your development workflow/efficiency. It can aid with tasks such as processing SASS code into CSS, minifying code, compressing/optimizing images, preparing code for production, etc.
