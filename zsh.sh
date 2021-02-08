sudo apt install zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# echo bindkey "^[[1;3C" forward-word >> ~/.zshrc
# echo bindkey "^[[1;3D" backward-word >> ~/.zshrc
chsh -s `which zsh`
