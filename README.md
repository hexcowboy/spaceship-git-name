> [!WARNING]  
> This is no longer maintained.

# spaceship-git-name
![Preview of plugin](https://i.imgur.com/mANrDW3.png)
A [Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt) plugin that shows the current git user name and email. The email icon is displayed if a git email address has been configured. Additionally, the git user name is displayed if it has been configured.

## Requirements
- [Zsh](https://github.com/zsh-users/zsh) installed and used as primary shell
- [Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

## Install
To install this plugin you need to source it from your `.zshrc`

1. Save `spaceship-git-name.sh` to your home folder (`~`)
2. In your `.zshrc`, source the plugin before you initialize spaceship. You can rename the file to anything you want.
```
. ~/spaceship-git-name.sh # <------ Add this line before the following!
autoload -U promptinit; promptinit
prompt spaceship
```
3. Lastly, you will need to [specify the ordering of your prompt](https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md#order).
```
SPACESHIP_PROMPT_ORDER=(
  # omitted
  git_user
  # omitted
)
```
