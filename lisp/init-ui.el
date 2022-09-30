;;全屏启动
(toggle-frame-maximized)
;;禁用欢迎页面
(setq inhibit-startup-screen t)
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;;设置光标样式
(setq-default cursor-type '(bar . 3))
(show-paren-mode t)
;;高亮当前行
(global-hl-line-mode 1)
;;设置主题
;;zeno monokai
(use-package monokai-theme)
(load-theme 'monokai 1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160);;

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后‘
(use-package doom-modeline
  :ensure t
  ;;fix doom modeline
  :custom-face
  (mode-line ((t (:height 0.9))))
  (mode-line-inactive ((t (:height 0.9))))
  :init
  (doom-modeline-mode t))

(provide 'init-ui)
