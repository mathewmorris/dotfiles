# dotfiles
All configuration I'm used to, stored in one place.

## zsh
// TODO: write a script that will do all this for me

- install [zsh](https://www.zsh.org/)
    ```bash
        sudo apt-get update && sudo apt-get install zsh
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
- install tmux
    ```bash
        sudo apt install tmux
    ```

## neovim
- [install prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
      ```bash
          sudo apt install ninja-build gettext cmake unzip curl
      ```
- [install and build nvim](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start)
- run `:PackerInstall` in nvim

