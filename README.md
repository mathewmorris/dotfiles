# dotfiles
All configuration I'm used to, stored in one place.

## zsh
- install [zsh](https://www.zsh.org/)
    ```bash
        sudo apt-get update && sudo apt-get install zsh
    ```
- install [oh-my-zsh](https://ohmyz.sh/)
    ```bash
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
- move .zshrc file to ~
    ```bash
        cp ./dotfiles/.zshrc ~
    ```
- install p10k theme
    ```bash
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
- install nodenv
    ```bash
        git clone https://github.com/nodenv/nodenv.git ~/.nodenv
    ```

## neovim
- run `:PackerInstall` in nvim

