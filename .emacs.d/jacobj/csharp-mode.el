;;setup csharp mode
(add-to-list 'load-path "~/.emacs.d/csharp-mode")
   (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
   (setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
