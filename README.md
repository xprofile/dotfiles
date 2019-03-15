
vim configs
===========

1. Install vim-plug

   [vim-plug](https://github.com/junegunn/vim-plug)

2. Add following codes in ~/.vimrc

   ```shell
   source ~/.configs/plug.vim
   source ~/.configs/base.vim
   ```

tmux configs
============

1. Install tpm

   ```shell
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

2. link to .tmux.conf

   ```shell
   ln -s .configs/.tmux.conf .tmux.conf
   ```
