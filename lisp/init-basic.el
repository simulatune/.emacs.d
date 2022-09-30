;;(icomplete-mode 1)
;;自动补全尖括号
(electric-pair-mode t)
;; 禁用左尖括号
(setq electric-pair-inhibit-predicate
      `(lambda (c)
	 (if (char-equal c ?\<) t (,electric-pair-inhibit-predicate c))))

(add-hook 'org-mode-hook
	  (lambda ()
	    (setq-local electric-pair-inhibit-predicate
			`(lambda (c)
			   (if (char-equal c ?\<) t (,electric-pair-inhibit-predicate c))))))


;;禁用文件版本控制
(setq make-backup-files nil)
;;自动加载外部修改过的文件
(global-auto-revert-mode 1)
;;关闭自动保存文件
(setq auto-save-default nil)
;;简化确认取消
(fset 'yes-or-no-p 'y-or-n-p)
;;选中文字可删除
(delete-selection-mode 1)
;;关闭 Emacs 中的警告音
(setq ring-bell-function 'ignore)
;;打开最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;;(global-set-key (kbd "C-x b") 'consult-buffer)
;; 这个快捷键绑定可以用之后的插件 counsel 代替
;;(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))

(provide 'init-basic)
