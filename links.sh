ln -si ./bash/.bashprofile ~/.bashprofile
ln -si ./bash/.bashrc ~/.bashrc

ln -si ./cargo/config.toml ~/.cargo/config.toml

ln -si ./clang/.clang-format ~/.clang-format
ln -si ./clang/.clang-tidy ~/.clang-tidy

ln -si ./fish/config.fish ~/.config/fish/config.fish

ln -si ./git/.gitconfig ~/.gitconfig

ln -si ./kitty/kitty-startup.session ~/.config/kitty/kitty-startup.session
ln -si ./kitty/kitty.conf ~/.config/kitty/kitty.conf

ln -si ./config-nvim ~/.config/nvim

ln -si ./tmux/.tmux.conf ~/.tmux.conf

ln -si ./wezterm/.wezterm.lua ~/.wezterm.lua

ln -si ./zsh/.zshenv ~/.zshenv
ln -si ./zsh/.zshrc ~/.zshrc

echo "Done"
