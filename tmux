thm_bg="#1e1e28"
thm_fg="#d7dae0"
thm_cyan="#c2e7f0"
thm_black="#15121c"
thm_gray="#2d293b"
thm_magenta="#c6aae8"
thm_pink="#f0afe1"
thm_red="#e28c8c"
thm_green="#b3e1a3"
thm_yellow="#eadda0"
thm_blue="#a4b9ef"
thm_orange="#f7c196"
catppuccin12="#3e4058"

# ----------------------------=== Theme ===--------------------------

# status
set -g status-position bottom
set -g status "on"
set -g status-bg "${thm_bg}"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-right-length "100"

# messages
set -g message-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"
set -g message-command-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"

# panes
set -g pane-border-style fg="${thm_gray}"
set -g pane-active-border-style fg="${thm_blue}"

set-window-option -g pane-active-border-style fg=$thm_pink
set-window-option -g pane-border-style fg=$thm_pink

# windows
set -g base-index 1
setw -g pane-base-index 1
set-window-option -g xterm-keys on
setw -g window-status-activity-style fg="${thm_fg}",bg="${thm_bg}",none
setw -g window-status-separator ""
setw -g window-status-style fg="${thm_fg}",bg="${thm_bg}",none
tm_tunes="#(osascript -l JavaScript $DOTFILES/applescripts/tunes.js)"
tm_tunes_display="#[bg=${thm_bg}]#[fg=$thm_pink]#[bg=$thm_pink]#[fg=$thm_bg] #[bg=$thm_gray]#[fg=$thm_fg] ${tm_tunes}"

# --------=== Statusline

set -g status-left ""
set -g status-right "#{?$tm_tunes,${tm_tunes_display},} #{?client_prefix,#[fg=$thm_red],#[fg=$thm_green]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_green]}#[fg=$thm_bg] #[fg=$thm_fg,bg=$thm_gray] #S "

# current_dir
setw -g window-status-format "#[fg=$thm_bg,bg=$thm_blue] #I #[fg=$thm_fg,bg=$thm_gray] #{?#{window_name},#W,#{b:pane_current_path}} "
setw -g window-status-current-format "#[fg=$thm_bg,bg=$thm_orange] #I #[fg=$thm_fg,bg=$thm_bg] #{?#{window_name},#W,#{b:pane_current_path}} "


# --------=== Modes
setw -g clock-mode-colour "${thm_blue}"
setw -g mode-style "fg=${thm_pink} bg=${catppuccin12} bold"


set -g history-limit 20000

######################
#### Key Bindings ####
######################


set -g prefix C-a

bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9

bind -n C-t new-window
bind -n M-w kill-window
bind -n S-Left  previous-window
bind -n S-Right next-window

# split window and fix path for tmux 1.9
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

# synchronize all panes in a window
bind y setw synchronize-panes

# pane movement shortcuts
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# Resize pane shortcuts
bind -r H resize-pane -L 10
bind -r J resize-pane -D 10
bind -r K resize-pane -U 10
bind -r L resize-pane -R 10

# enable mouse support for switching panes/windows
setw -g mouse on

# set vi mode for copy mode
setw -g mode-keys vi

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'

run -b '~/.tmux/plugins/tpm/tpm'
