(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))

;;查看源码
(global-set-key (kbd "C-h C-f") 'find-function)

;;modeline上显示我的所有的按键和执行的命令
(use-package keycast)
;;在ui之前执行
(add-to-list 'global-mode-string '("" keycast-mode-line))
(keycast-mode t)

(use-package vertico)
(vertico-mode t)

(use-package orderless)
(setq completion-styles '(orderless))

(use-package marginalia)
(marginalia-mode t)

(use-package embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)

(use-package consult)
;;replace swiper
(global-set-key (kbd "C-s") 'consult-line)
;;consult-imenu
(global-set-key (kbd "M-s i") 'consult-imenu)

(provide 'init-company)
