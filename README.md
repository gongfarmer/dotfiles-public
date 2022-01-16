# dotfiles-public
Fraser's dotfiles for unix user accounts

Based on this:
https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

To deploy it on a new account:

Installing:
1. cd
2. echo ".cfg" >> .gitignore
3. git clone --bare git@github.com:gongfarmer/dotfiles-public.git $HOME/.cfg
4. alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
5. config config --local status.showUntrackedFiles no
6. config checkout
7. vi .bashrc # Add this:
```
  ### Fraser custom configuration
  if [ -f ~/.bash_fraser ]; then
    source ~/.bash_fraser
  fi
```
