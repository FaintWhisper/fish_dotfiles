# Set Remote Servers SSH Connections Alias
source ~/.config/fish/conf.d/env_paths.fish

# Lab
## Servidores
function ro; bash "$remote_servers_scripts_dir/rohan.sh" $argv; end
function ta; bash "$remote_servers_scripts_dir/tardis.sh" $argv; end
function an; bash "$remote_servers_scripts_dir/andromeda.sh" $argv; end
function mw; bash "$remote_servers_scripts_dir/mw.sh" $argv; end
function sc; bash "$remote_servers_scripts_dir/cg.sh" $argv; end
function gon; bash "$remote_servers_scripts_dir/gondor.sh" $argv; end
function mi; bash "$remote_servers_scripts_dir/milkyway.sh" $argv; end
function na; bash "$remote_servers_scripts_dir/nautilus.sh" $argv; end
function pc; bash "$remote_servers_scripts_dir/pcalb.sh" $argv; end
function ph; bash "$remote_servers_scripts_dir/phoenix.sh" $argv; end
function se; bash "$remote_servers_scripts_dir/serenity.sh" $argv; end
function si; bash "$remote_servers_scripts_dir/sirius.sh" $argv; end

## TFS
function con; bash "$remote_servers_scripts_dir/controller.sh" $argv; end
function dad; bash "$remote_servers_scripts_dir/dad.sh" $argv; end

## Jupyter
function anj; bash "$remote_servers_scripts_dir/andromeda_jupyter.sh" $argv; end
function mwj; bash "$remote_servers_scripts_dir/mw_jupyter.sh" $argv; end
function scj; bash "$remote_servers_scripts_dir/cognet_jupyter.sh" $argv; end
function goj; bash "$remote_servers_scripts_dir/gondor_jupyter.sh" $argv; end
function mij; bash "$remote_servers_scripts_dir/milkyway_jupyter.sh" $argv; end
function naj; bash "$remote_servers_scripts_dir/nautilus_jupyter.sh" $argv; end
function pcj; bash "$remote_servers_scripts_dir/pcalb_jupyter.sh" $argv; end
function phj; bash "$remote_servers_scripts_dir/phoenix_jupyter.sh" $argv; end
function ju; bash "$remote_servers_scripts_dir/setup_jupyter.sh" $argv; end

# Mis VMs
alias az="clear; ssh amit@40.121.53.98"

# TID VPN
alias vpn="$remote_servers_scripts_dir/vpn_tid.sh"

# Remote Servers SSH Connections Local Forwarding
alias bd="$remote_servers_scripts_dir/bind.sh"

# Live Captions
alias apr "sudo service dbus start; flatpak run net.sapples.LiveCaptions"

# Pip
alias pip="pip3"

# Git log
git config --global alias.ll 'log --graph --format="%C(yellow)%h%C(red)%d%C(reset) - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'

alias tf='bash -c "tv | while read -r line; do micro \"\$line\"; done"'
