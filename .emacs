;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(adaptive-wrap-extra-indent 0)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red1" "green1" "yellow1" "blue" "magenta1" "cyan" "white"])
 '(c-tab-always-indent t)
 '(column-number-mode t)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
	("c90cbe0f12402990ab1e3d3812e4f12b1dc33bd32c5afd479495deef3ca9bc15" "bf3ec301ea82ab546efb39c2fdd4412d1188c7382ff3bbadd74a8ecae4121678" "d737a2131d5ac01c0b2b944e0d2cb0be1c76496bb4ed61be51ff0e5457468974" "d2b1a25a5e2ed8815fe07a7ebf1b27e7095966bd0eb5afb8d0d1e85ef4809998" default)))
 '(evil-auto-balance-windows t)
 '(evil-indent-convert-tabs nil)
 '(evil-shift-width 4)
 '(exec-path
   (quote
	("c:/ProgramData/Oracle/Java/javapath" "C:/Program Files/Intel/iCLS Client/" "C:/Windows/system32" "C:/Windows" "C:/Windows/System32/Wbem" "C:/Windows/System32/WindowsPowerShell/v1.0/" "C:/Program Files/Intel/Intel(R) Management Engine Components/DAL" "C:/Program Files/Intel/Intel(R) Management Engine Components/IPT" "C:/Program Files/TortoiseSVN/bin" "c:/Program Files/Microsoft SQL Server/100/Tools/Binn/" "c:/Program Files/Microsoft SQL Server/100/DTS/Binn/" "C:/Program Files/Intel/OpenCL SDK/3.0/bin/x86" "c:/Program Files/Microsoft SQL Server/100/Tools/Binn/VSShell/Common7/IDE/" "c:/DevTools/svn-win32-1.6.1/bin/" "C:/Program Files/Microsoft SQL Server/110/Tools/Binn/" "c:/Users/jacobj/emacs-25.1-2-i686-w64-mingw32/libexec/emacs/25.1/i686-w64-mingw32")))
 '(fci-rule-color "#383838")
 '(global-visual-line-mode t)
 '(kill-do-not-save-duplicates t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(speedbar-default-position (quote left))
 '(sr-speedbar-default-width 20)
 '(sr-speedbar-max-width 20)
 '(sr-speedbar-right-side nil)
 '(tab-always-indent t)
 '(tab-width 4)
 '(tetris-default-tick-period 0.4)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
	((20 . "#BC8383")
	 (40 . "#CC9393")
	 (60 . "#DFAF8F")
	 (80 . "#D0BF8F")
	 (100 . "#E0CF9F")
	 (120 . "#F0DFAF")
	 (140 . "#5F7F5F")
	 (160 . "#7F9F7F")
	 (180 . "#8FB28F")
	 (200 . "#9FC59F")
	 (220 . "#AFD8AF")
	 (240 . "#BFEBBF")
	 (260 . "#93E0E3")
	 (280 . "#6CA0A3")
	 (300 . "#7CB8BB")
	 (320 . "#8CD0D3")
	 (340 . "#94BFF3")
	 (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(buffer-menu-buffer ((t (:weight extra-bold))))
 '(js2-warning ((t (:underline (:color "red1" :style wave))))))

;;================================================================
;;=========== THINGS I'VE ADDED MANUALLY =========================

;;add custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;save backups in home directory in /saves folder
(setq backup-directory-alist `(("." . "~/.saves")))
;;make backups by copying, may want to update this later
(setq backup-by-copying t)

;;save backupfiles in the temporary directory
(setq auto-save-file-name-transforms
		`((".*" ,temporary-file-directory t)))

;;don't create file lock, this was done because work has a file syncer and it's stupid
(setq create-lockfiles nil)

;;disable scrollbars
(scroll-bar-mode -1)

;; set tab width for javascript
;(setq-default ab-width 4)

;; enable IDO mode
(require 'ido)
(ido-mode t)

;;setup evil mode, MUHAHAHAH
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;;use find file in project
(add-to-list 'load-path "~/.emacs.d/find-file-in-project")
(require 'find-file-in-project)
   (if (eq system-type 'windows-nt)
      (setq ffip-find-executable "c:/Users/jacobj/Documents/Portable_Git_32/usr/bin/find.exe"))

;;setup csharp mode
(add-to-list 'load-path "~/.emacs.d/csharp-mode")
   (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
   (setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;;use evil numbers ^o^
(add-to-list 'load-path "~/.emacs.d/evil-numbers")
(require 'evil-numbers)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

;;use adaptive wrap
(add-to-list 'load-path "~/.emacs.d/adaptive-wrap")
(require 'adaptive-wrap)

;;use sr-speedbar
(add-to-list 'load-path "~/.emacs.d/sr-speedbar")
(require 'sr-speedbar)
;; (with-current-buffer sr-speedbar-buffer-name
;;   (setq window-size-fixed 'width))

;;use js2 mode 
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


;; load undo-tree
(add-to-list 'load-path "~/.emacs.d/undo-tree")
  (require 'undo-tree)
;; use undo-tree
(global-undo-tree-mode)

;;save emacs session
(desktop-save-mode 1)

;;;add dash.el, added to get magit working 
;(add-to-list 'load-path "~/.emacs.d/dash.el")
;
;;;add with-editor, added to get magit working 
;(add-to-list 'load-path "~/.emacs.d/with-editor")

;;vb-net mode
(add-to-list 'load-path "~/.emacs.d/vbnet-mode")
(require 'compile)
(require 'vbnet-mode)
	(autoload 'vbnet-mode "vbnet-mode" "Mode for editing VB.NET code." t)
	(setq auto-mode-alist
		(append '(("\\.vb$" . vbnet-mode)) auto-mode-alist))

;; pomodoro timer
(add-to-list 'load-path "~/.emacs.d/pomodoro.el")
	(require 'pomodoro) 
	(pomodoro-add-to-mode-line)

;;custom keyboard shortcuts
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "<M-down>") 'move-line-down)

(global-set-key (kbd "C-<") 'previous-buffer)
(global-set-key (kbd "C->") 'next-buffer)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
