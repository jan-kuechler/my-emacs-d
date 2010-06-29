;; init.el

(setq load-path 
      (cons
       "~/.emacs.d/lisp" 
       load-path))

;; lua-mode
(setq auto-mode-alist 
      (cons 
       '("\\.lua$" . lua-mode)
       auto-mode-alist))

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

;; line numers
(require 'linum+)

;; auto load linum-mode for C(++) and Lua files
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (linum-mode)
	    ))

(add-hook 'lua-mode-hook
	  (lambda ()
	    (linum-mode)
	    ))

;; keybindings

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-q" 'kill-region)
(global-set-key "\C-z" 'undo)


;; Disable startup screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)
