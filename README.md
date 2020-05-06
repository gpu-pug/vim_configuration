# My vim configuration

My vim configuration, with plugins. Nothing fancy, loaded here for sake of portability.

## Installation
* Put .vimrc in ~
* Put colors in ~/.vim/
* run in terminal:
```bash
echo alias vi='vim' >> ~/.bashrc; \
cp -R colors ~/.vim/; \
cp .vimrc ~; \
python3 -m pip install --user neovim pynvim; \
vim -es -u ~/.vimrc -i NONE -c "PlugInstall" -c "qa"
```
