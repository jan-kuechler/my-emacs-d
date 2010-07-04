;; init.el

(require 'cl)

(defvar emacs-root "~/.emacs.d/")

(labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))
  (add-path "lisp")
  (add-path "site-lisp")
  (add-path "site-lisp/autocomplete")
  (add-path "site-lisp/slime")
)

;; lua-mode
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

;; line numers
(require 'linum+)

;; auto load linum-mode for C(++) and Lua files

(add-hook 'c-mode-common-hook 'linum-mode)
(add-hook 'lua-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode-hook 'linum-mode)

;; auto-complete

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-listp/autocomplete/ac-dict")
(ac-config-default)

;; SLIME

(setq inferior-lisp-program "c:/tools/LispBox/CLISP/RunCLISP.bat") ; your Lisp system
(require 'slime)
(slime-setup)

;; window hopping
(defun other-window-backward (n)
  "Select n-th prev. window."
  (interactive "p")
  (other-window (- n)))

;; keybindings
(load-library "keys")

(defalias 'qr 'query-replace)

;; Disable toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Disable startup screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)
