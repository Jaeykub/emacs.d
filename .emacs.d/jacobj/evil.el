;;setup evil mode, MUHAHAHAH
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;;skipping visual lines is dumb
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;;go across lines for f key and possibly unforseen things
(setq evil-cross-lines t)

;;lemme use evil-mode in these modes
(setq evil-emacs-state-modes (delq 'ibuffer-mode evil-emacs-state-modes))
