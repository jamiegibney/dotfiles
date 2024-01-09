# This will automatically override any existing links.

ln -sf ./bash/.bashprofile ~/.bashprofile
ln -sf ./bash/.bashrc ~/.bashrc

ln -sf ./cargo/config.toml ~/.cargo/config.toml

ln -sf ./clang/.clang-format ~/.clang-format
ln -sf ./clang/.clang-tidy ~/.clang-tidy

ln -sf ./fish/config.fish ~/.config/fish/config.fish

ln -sf ./git/.gitconfig ~/.gitconfig

ln -sf ./kitty/kitty-startup.session ~/.config/kitty/kitty-startup.session
ln -sf ./kitty/kitty.conf ~/.config/kitty/kitty.conf

ln -sf ./tmux/.tmux.conf ~/.tmux.conf

ln -sf ./wezterm/.wezterm.lua ~/.wezterm.lua

ln -sf ./zsh/.zshenv ~/.zshenv
ln -sf ./zsh/.zshrc ~/.zshrc

echo "Overwrote symbolic links"
