# Bind Ctrl + Right Arrow to forward-word
bind \e\[1\;5C forward-word

# Bind Ctrl + Left Arrow to backward-word
bind \e\[1\;5D backward-word

# Bind Ctrl + Delete to delete-word
bind \cH backward-kill-path-component

# Bind Ctrl + Supr to delete-word
bind \e\[3\;5~ kill-word

#fzf_configure_bindings --history=\ce --processes=\cp

# Function for TV Text
function tv_text_binding
    bash -c "tv text | while read -r line; do micro \"\$line\"; done"
end

# Function for TV Files
function tv_files_binding
    bash -c "tv files | while read -r line; do micro \"\$line\"; done"
end

# Function for TV Dirs
function tv_dirs_binding
    cd (tv dirs)
    commandline -f repaint
end

# Bindings
bind \ct tv_text_binding        # Alt + T
bind \cf tv_files_binding        # Ctrl + F
bind \ed tv_dirs_binding        # Alt + D
