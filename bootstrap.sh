sudo apt update
sudo apt-get install -y emacs
git config --global core.editor "emacs"
export GIT_EDITOR=emacs

export GITHUB_TOKEN="$GH_GH_PAT"

ssh-keygen -t ed25519 -C "monalisa@github.com" -q -N "" -f ~/.ssh/id_ed25519

touch  ~/.ssh/config
echo "Host github.com" >> ~/.ssh/config
echo "  AddKeysToAgent yes" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config


eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
