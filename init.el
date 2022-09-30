(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(require 'init-basic)
(require 'init-funcs)

(require 'init-company)
(require 'init-ui)

(require 'init-keybindings)
(require 'init-org)

(use-package magit)

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)
