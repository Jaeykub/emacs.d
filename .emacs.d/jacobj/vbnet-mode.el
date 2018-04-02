;;vb-net mode
(add-to-list 'load-path "~/.emacs.d/vbnet-mode")
(require 'compile)
(require 'vbnet-mode)
	(autoload 'vbnet-mode "vbnet-mode" "Mode for editing VB.NET code." t)
	(setq auto-mode-alist
		(append '(("\\.vb$" . vbnet-mode)) auto-mode-alist))
