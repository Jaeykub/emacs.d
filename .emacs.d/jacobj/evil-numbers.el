;;use evil numbers ^o^
(add-to-list 'load-path "~/.emacs.d/evil-numbers")
(require 'evil-numbers)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)
