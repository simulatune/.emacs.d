(require 'org-tempo)  ;开启easy template

;;(use-package org
;;  :pin melpa
;;  :ensure t)

;;(use-package org-contrib
;;  :pin nongnu
;;  )

;;(setq org-todo-keywords
;;      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
;;	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))

;;(require 'org-checklist)

;;(setq org-log-done t)
;;(setq org-log-into-drawer t)



;; C-c C-s schedule
;; C-c C-d deadline
;;(global-set-key (kbd "C-c a") 'org-agenda)
;;(setq org-agenda-files '("~/gtd.org"))
;;(setq org-agenda-span 'day)

;;(setq org-capture-templates
;;      '(("t" "Todo" entry (file+headline "~/gtd.org" "Workspace")
;;	 "* TODO [#B] %?\n  %i\n %U"
;;	 :empty-lines 1)))

;;(global-set-key (kbd "C-c r") 'org-capture)




;;hugo博客相关(org->markdown)
(with-eval-after-load 'ox
  (require 'ox-hugo))
  
(use-package ox-hugo
  :pin melpa  ;`package-archives' should already have ("melpa" . "https://melpa.org/packages/")
  :after ox)

(use-package yasnippet
  :config
  (yas-global-mode 1))

(provide 'init-org)
