(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(require 'init-basic)
(require 'init-funcs)

(require 'init-company)
(require 'init-ui)

(require 'init-keybindings)
(require 'init-org)

(use-package magit)

(use-package plantuml-mode)
(setq org-plantuml-jar-path (expand-file-name "/Users/simulatune/.emacs.d/tools/plantuml-1.2022.8.jar"))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)
