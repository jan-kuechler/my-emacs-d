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

;; auto load linum-mode in some specific modes

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

(load-library "utils")  ; some litle utility functions
(load-library "keys")   ; Keybindings
(load-library "config") ; Configuration
