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

;;change buffers
(global-set-key (kbd "C-<") 'previous-buffer)
(global-set-key (kbd "C->") 'next-buffer)
;; (put 'narrow-to-region 'disabled nil)
;; (put 'set-goal-column 'disabled nil)


(global-set-key (kbd "C-x C-a") 'adaptive-wrap-prefix-mode)
(global-set-key (kbd "C-<return>") 'evil-force-normal-state)
