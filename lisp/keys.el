;; My keybindings

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-q" 'kill-region)
(global-set-key "\C-z" 'undo)

(global-set-key [(M-down)] 'other-window)
(global-set-key [(M-up)] 'other-window-backward)

(global-set-key [f5] 'call-last-kbd-macro)

(global-set-key "\C-c \C-c" 'copy-region-as-kill)
(global-set-key "\C-v" 'yank)

(global-set-key [f7] 'recompile)

