# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/documents/projects"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "vim"

# Split window into panes.
split_h 30
select_pane 0
split_v 20

select_pane 2
split_v 50
select_pane 2
split_v 50

# Run commands.
run_cmd "vim" 0 # top pane in left pane
run_cmd "cd /home/ttzhou/documents/projects" 1 # bottom pane in left pane
run_cmd "clear" 1 # bottom pane in left pane

run_cmd "ncmpcpp" 2 # top pane in right pane
run_cmd "ncmpcpp" 3 # middle pane in right pane
run_cmd "man tmux" 4  # bottom pane in right pane

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
rename-window 'programming'
