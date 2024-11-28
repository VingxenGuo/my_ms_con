#! /bin/bash
# For centos, install requirement for pyenv
yum update
yum install -y gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel gdbm-devel ncurses-devel uuid-devel git
yum groupinstall -y "Development Tools"

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.bashrc
# Restart shell 
exec "$SHELL"
# 預設使用 python3.7
pyenv install -v 3.7.7
pyenv global 3.7.7