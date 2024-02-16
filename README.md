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
        sudo apt install lsb-release gpg g++ git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libz-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev ninja-build gettext cmake unzip
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
- move all files to home directory
    ```bash
        stow -vvv .
    ```
- install p10k
    ```bash
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
- install p10k theme
    ```bash
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
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
- install tpm (tmux plugin manager)
    ```bash
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```

    Then run `C-a-i` command to install plugins
- install neovim
    ```bash
        git clone https://github.com/neovim/neovim
        cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
        sudo make install
    ```
- install postgres
    ```bash
        # Create the file repository configuration:
        sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

        # Import the repository signing key:
        wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

        # Update the package lists:
        sudo apt-get update

        # Install the latest version of PostgreSQL.
        # If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
        sudo apt-get -y install postgresql
    ```
- create user for postgres
    ```bash
        sudo -i -u postgres
        psql
    ```
    ```sql
        CREATE USER <username>
    ```



