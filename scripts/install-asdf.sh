

echo "apt"
sudo apt install curl git
sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
sudo apt install unzip
sudo apt-get update; sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
echo "Depending on your version of Ubuntu/Debian/Mint, libgdbm6 won't be available."
echo "In that case, try an earlier version such as libgdbm5."
apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev

echo "yum"
sudo yum install -y gcc-6 bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel


git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

echo "if not using dotfiles repo, you will need to add to your .bashrc"
echo ". $HOME/.asdf/asdf.sh"


echo "Installing erlang"
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

echo "Installing elixir"
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

echo "Installing Go"
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

echo "Installing python"
asdf plugin-add python

echo "Installing ruby"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

echo "Installing tmux"
asdf plugin-add tmux https://github.com/aphecetche/asdf-tmux.git
