;; init.el

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp")

(load-file "libs.el")

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

;; window hopping
(defun other-window-backward (n)
  "Select n-th prev. window."
  (interactive "p")
  (other-window (- n)))

;; keybindings

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-q" 'kill-region)
(global-set-key "\C-z" 'undo)

(global-set-key [(M-down)] 'other-window)
(global-set-key [(M-up)] 'other-window-backward)

(global-set-key [f5] 'call-last-kbd-macro)

(defalias 'qr 'query-replace)

;; Disable toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Disable startup screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)
