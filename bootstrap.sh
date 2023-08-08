sudo apt update
sudo apt-get install -y emacs
git config --global core.editor "emacs"
export GIT_EDITOR=emacs

export GITHUB_TOKEN="$GH_GH_PAT"
