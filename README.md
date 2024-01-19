# dotfiles
All configuration I'm used to, stored in one place.

## zsh
// TODO: write a script that will do all this for me

- update apt repos
    ```bash
        sudo apt update
    ```
- install tools
    ```bash
        sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev ninja-build gettext cmake unzip
    ```
- setup git config
    ```bash
        git config --global user.email "your@email.com"
        git config --global user.name "Your Name"
    ``` 
- install [zsh](https://www.zsh.org/)
    ```bash
        sudo apt update && sudo apt install zsh
    ```
- install [oh-my-zsh](https://ohmyz.sh/)
    ```bash
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
- link .zshrc file to ~
    ```bash
        ln ~/dotfiles/.zshrc ~/.zshrc
    ```
- link .tmux.conf to ~
    ```bash
        ln ~/dotfiles/.tmux.conf ~/.tmux.conf
    ```
- install p10k theme
    ```bash
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
- install nodenv
    ```bash
        git clone https://github.com/nodenv/nodenv.git ~/.nodenv
    ```
- install nodenv install as a plugin to nodenv
    ```bash
        mkdir -p "$(nodenv root)"/plugins
        git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
    ```
    - install latest node version
    - set node version as global nodenv `nodenv global x.x.x`
- install rbenv
    ```bash
        git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    ```
- install ruby-build (rbenv install) as a plugin to rbenv
    ```bash
        git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
    ```
    - see versions to install `rbenv install -l`
    - install version `rbenv install x.x.x`
    - set as global ruby version `rbenv global x.x.x`
- install tmux
    ```bash
        sudo apt install tmux
    ```
- install neovim
    ```bash
        git clone https://github.com/neovim/neovim
        cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
        sudo make install
    ```

- run `:PackerInstall` in nvim

