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

(global-set-key (kbd "C-;") 'nonincremental-re-search-forward)
(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "<M-down>") 'move-line-down)

;;change buffers
(global-set-key (kbd "C-<") 'previous-buffer)
(global-set-key (kbd "C->") 'next-buffer)

;;change windows dang it this conflicts with org-mode
;; (global-set-key (kbd "<C-S-tab>") 'evil-window-prev)
;; (global-set-key (kbd "<C-tab>") 'evil-window-next)

(global-set-key (kbd "C-x C-a") 'adaptive-wrap-prefix-mode)
;; interferes with org mode, so disabling for now
;; (global-set-key (kbd "C-<return>") 'evil-force-normal-state)
