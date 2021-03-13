;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

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

;; ;; add yasnippet
;; (add-to-list 'load-path
;;               "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        "~/.emacs.d/elpa/yasnippet-snippets-20200606.1149/snippets" ;; the yasmate collection
        ))
(yas-global-mode 1)

(global-visual-line-mode)

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

;; set c register to init file
(set-register ?c '(file . "~/.emacs.d/init.el"))

;; set longer timeout for minibuffer
(setq minibuffer-message-timeout 3)

(require 'json)

(setq max-specpdl-size 19500)
(setq max-lisp-eval-depth 12000)

(setq org-directory "~/.emacs.d/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(add-to-list 'default-frame-alist
	     '(font . "Consolas-12"))

(load-theme 'solarized-light)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-safe-themes
   '("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default))
 '(org-agenda-custom-commands
   '(("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (todo "TODO" nil))
      nil)))
 '(org-agenda-files '("C:\\Users\\mexfr\\Dropbox\\org" "~/.emacs.d/org/"))
 '(org-agenda-skip-scheduled-if-done t)
 '(org-capture-templates
   '(("r" "random thoughts" entry
      (file "~/.emacs.d/org/random.org")
      "* 
%T")
     ("b" "Bookmark" entry
      (file "c:/Users/mexfr/Dropbox/org/bookmarks.org")
      "* %^{Paste Link}")
     ("t" "capture a todo item" entry
      (file "c:/Users/mexfr/Dropbox/org/inbox.org")
      "* TODO ")))
 '(org-default-notes-file "C:\\Users\\mexfr\\Downloads\\org\\inbox.org")
 '(org-insert-heading-respect-content t)
 '(org-todo-keywords '((sequence "TODO(t)" "WAITING" "DONE(d@)")))
 '(package-selected-packages
   '(magit helm-projectile projectile projectile-codesearch helm f org-alert ob-http org-wild-notifier image-dired+ company-erlang smex nov solarized-theme yasnippet-snippets js2-mode find-file-in-project evil-numbers evil csharp-mode adaptive-wrap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-c e c") 'calc)
(global-set-key (kbd "C-c e l p") 'list-packages)
(global-set-key (kbd "C-c c e s b") 'org-babel)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c f f s") 'find-file-in-project-by-selected)


;; * Toggle the asynchronous image-dired feature
(eval-after-load 'image-dired+ '(image-diredx-async-mode 1))
;; * Toggle the adjusting image in image-dired feature
(eval-after-load 'image-dired+ '(image-diredx-adjust-mode 1))

(require 'org-alert)
(setq alert-default-style 'toast)

(add-to-list 'load-path "~/.emacs.d/alert-toast/")
(require 'alert-toast)

(add-to-list 'load-path "~/.emacs.d/helm-twitch-master")
(require 'helm-twitch)
(require 'livestreamer)
(setq twitch-game-type "Just Chatting")
(setq helm-twitch-username "jaeykubb"
	  helm-twitch-oauth-token "oauth:8ujrpb0vi4vky52i85yq9rniajwd4d")

;; inspired by
;;https://www.reddit.com/r/orgmode/comments/i2d75e/tracking_my_diet_with_emacs_and_orgmode/
;; (setq org-capture-templates
;;       '(("w" "Weigh-in" entry
;; 	 (file "c:/Users/mexfr/Dropbox/org/diet-log.org")
;; 	 "* Weight for day %t
;; %^{Weight}p"
;; 	 :prepend t)
;; 	("b" "Bookmark" entry
;; 	 (file "c:/Users/mexfr/Dropbox/org/bookmarks.org")
;; 	 "* "
;; 	 :prepend t)))

;;set grep path
(setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "C:\\Users\\mexfr\\portacle\\win\\bin"
   (getenv "PATH")))
