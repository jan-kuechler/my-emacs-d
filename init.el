;; init.el

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/lisp")

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

;; auto-complete

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; keybindings

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-q" 'kill-region)
(global-set-key "\C-z" 'undo)


;; Disable startup screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)
