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
 '(custom-safe-themes
   (quote
	("39ba0dc17b135c9ab5317408ba4f30b369dab28878c1f942fcab50fd978a4261" "211ec5e85561212ccb3da6318ca0821ee80f552e6989f215060808b49e904e7a" "9f594a59cf1723a75935133723f4f8a827df41fea760d90b1804e3dd488a88c3" "81c549a440618c9a6c679d82e500fae0c88d0fedefcd4207cf1da47f913e3972" "c90cbe0f12402990ab1e3d3812e4f12b1dc33bd32c5afd479495deef3ca9bc15" "bf3ec301ea82ab546efb39c2fdd4412d1188c7382ff3bbadd74a8ecae4121678" "d737a2131d5ac01c0b2b944e0d2cb0be1c76496bb4ed61be51ff0e5457468974" "d2b1a25a5e2ed8815fe07a7ebf1b27e7095966bd0eb5afb8d0d1e85ef4809998" default)))
 '(evil-auto-balance-windows t)
 '(evil-indent-convert-tabs nil)
 '(evil-shift-width 4)
 '(exec-path
   (quote
	("c:/ProgramData/Oracle/Java/javapath" "C:/Program Files/Intel/iCLS Client/" "C:/Windows/system32" "C:/Windows" "C:/Windows/System32/Wbem" "C:/Windows/System32/WindowsPowerShell/v1.0/" "C:/Program Files/Intel/Intel(R) Management Engine Components/DAL" "C:/Program Files/Intel/Intel(R) Management Engine Components/IPT" "C:/Program Files/TortoiseSVN/bin" "c:/Program Files/Microsoft SQL Server/100/Tools/Binn/" "c:/Program Files/Microsoft SQL Server/100/DTS/Binn/" "C:/Program Files/Intel/OpenCL SDK/3.0/bin/x86" "c:/Program Files/Microsoft SQL Server/100/Tools/Binn/VSShell/Common7/IDE/" "c:/DevTools/svn-win32-1.6.1/bin/" "C:/Program Files/Microsoft SQL Server/110/Tools/Binn/" "c:/Users/jacobj/emacs-25.1-2-i686-w64-mingw32/libexec/emacs/25.1/i686-w64-mingw32")))
 '(explicit-shell-file-name nil)
 '(fci-rule-color "#383838")
 '(glasses-original-separator "_")
 '(global-visual-line-mode t)
 '(grep-command "grep -inR '' .")
 '(kill-do-not-save-duplicates t)
 '(line-spacing 0.25)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-M-RET-may-split-line (quote ((default))))
 '(org-file-apps
   (quote
	((auto-mode . emacs)
	 ("\\.docx\\'" . default)
	 ("\\.x?html?\\'" . default)
	 ("\\.pdf\\'" . default))))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(safe-local-variable-values
   (quote
	((eval face-remap-add-relative
		   (quote org-formula)
		   :foreground "#D0E1F9")
	 (eval face-remap-add-relative
		   (quote org-table)
		   :foreground "#7B9ED2")
	 (firestarter org-babel-tangle))))
 '(send-mail-function (quote mailclient-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(speedbar-default-position (quote left))
 '(sr-speedbar-default-width 20)
 '(sr-speedbar-max-width 20)
 '(sr-speedbar-right-side nil)
 '(tab-always-indent t)
 '(tab-width 4)
 '(tetris-default-tick-period 0.4)
 '(vbnet-capitalize-keywords-p nil)
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
 '(vc-annotate-very-old-color "#DC8CC3")
 '(whitespace-style
   (quote
	(trailing tabs spaces newline empty indentation space-after-tab space-before-tab space-mark tab-mark newline-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(buffer-menu-buffer ((t (:weight extra-bold))))
 '(js2-warning ((t (:underline (:color "red1" :style wave))))))

;; ===========================================================
;; ===========================================================
;; grabbed this from:
;; https://github.com/rawsyntax/emacs.d/blob/master/init.el
;; You can keep system- or user-specific customizations here
;; ===========================================================
(progn
  ;; Turn off mouse interface early in startup to avoid momentary display
  (dolist (mode '(tool-bar-mode)) ;;scroll-bar-mode menu-bar-mode
    (when (fboundp mode) (funcall mode -1)))


  ;; You can keep system- or user-specific customizations here
  (setq esk-system-config (concat user-emacs-directory system-name ".el")
        esk-user-config (concat user-emacs-directory user-login-name ".el")
        esk-user-dir (concat user-emacs-directory user-login-name))

  (require 'uniquify)

  (defun esk-eval-after-init (form)
    "Add `(lambda () FORM)' to `after-init-hook'.
    If Emacs has already finished initialization, also eval FORM immediately."
    (let ((func (list 'lambda nil form)))
      (add-hook 'after-init-hook func)
      (when after-init-time
        (eval form))))

  (esk-eval-after-init
   '(progn
      (when (file-exists-p esk-system-config) (load esk-system-config))
      (when (file-exists-p esk-user-config) (load esk-user-config))
      (when (file-exists-p esk-user-dir)
        (mapc 'load (directory-files esk-user-dir t "^[^#].*el$"))))))
;;================================================================
;;=========== THINGS I'VE ADDED MANUALLY =========================

;;add custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'lab-light t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/danneskjold-theme")
;;save backups in home directory in /saves folder
(setq backup-directory-alist `(("." . "~/.saves")))
;;make backups by copying, may want to update this later
(setq backup-by-copying t)

;;save backupfiles in the temporary directory
(setq auto-save-file-name-transforms
		`((".*" ,temporary-file-directory t)))

;;don't create file lock, this was done because work has a file syncer and it's stupid
(setq create-lockfiles nil)

;; Fontify the whole line for headings (with a background color).
(setq org-fontify-whole-heading-line t)

;; fontify in code blocks
(setq org-src-fontify-natively t)

;;sort completions vertically instead of horizontally
(setq completions-format 'vertical)

;;disable scrollbars
(scroll-bar-mode 1)
(set-window-scroll-bars (minibuffer-window) nil nil)

;;save emacs session
(desktop-save-mode 1)

;; add yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        "~/.emacs.d/plugins/yasnippet/yasnippet-snippets/snippets" ;; the yasmate collection
        ))
(yas-global-mode 1)

;; use powerline
;; (add-to-list 'load-path
;;               "~/.emacs.d/powerline")
;; (require 'powerline)
;; (powerline-center-evil-theme)

;; use multiple cursors
;; (add-to-list 'load-path
;;               "~/.emacs.d/multiple-cursors.el")
;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;;
(put 'narrow-to-defun  'disabled nil)
(put 'narrow-to-page   'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)


;; set s register to scratch buffer
(set-register ?s '(file . "*scratch*"))

;; set c register to scratch buffer
(set-register ?c '(file . "~/.emacs"))

;; set longer timeout for minibuffer
(setq minibuffer-message-timeout 3)

(require 'json)

(setq max-specpdl-size 19500)
(setq max-lisp-eval-depth 12000)

(setq org-directory "~/.emacs.d/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
