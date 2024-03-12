# .dotfiles

## Setup

Install stow 

```bash
brew install stow
```

Install wget

```bash
brew install wget
```

Install oh-my-zsh

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install gh

```bash
brew install gh
```

ZSH Autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Settings

### Oh my ZSH

- Updates set to auto
- Zsh config alias updated to `~/.dotfiles/.zshrc`

Plugins:

- git
- macos (https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos)
- gh (https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gh)