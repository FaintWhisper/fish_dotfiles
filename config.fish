# Remove Welcome Message
set -Ux fish_greeting

# Color Preset Configuration
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Fix Windows Terminal startup directory
function fix_wt_start_dir --on-event fish_prompt
    if test "$PWD" = "/mnt/c/Windows/System32"; or test "$PWD" = "/home/amit"
        cd /mnt/c/Users/Amit/Downloads
        functions --erase fix_wt_start_dir
    end
end

# Init Starship
starship init fish | source

# Start ssh-agent if not already running,
# but don’t print “Agent pid …”
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c &>/dev/null)
end

# Add your keys (errors still go to /dev/null)
ssh-add ~/.ssh/id_amit_mmb 2>/dev/null
ssh-add ~/.ssh/id_github   2>/dev/null
ssh-add ~/.ssh/id_github_upm 2>/dev/null

set -g rpoc_time_prefix ''
set -g rpoc_cmd_duration_disabled 1

fzf_configure_bindings --history=\cr --processes=\cp --directory= --git_log= --git_status= --variables=

# General env settings
export SAFE_RM_PERM_DEL_FILES_IN_TRASH=yes
