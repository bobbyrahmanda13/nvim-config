#!/bin/bash
echo "Unix, Linux Installation"
echo "========================"
echo "install Packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo "========================"
echo "git clone file config nvim"
git clone https://github.com/bobbyrahmanda13/nvim-config/
cd nvim-config && mkdir ../.config/nvim && mv * ../.config/
