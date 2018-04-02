;;use find file in project
(add-to-list 'load-path "~/.emacs.d/find-file-in-project")
(require 'find-file-in-project)
   (if (eq system-type 'windows-nt)
      (setq ffip-find-executable "c:/Users/jacobj/Documents/Portable_Git_32/usr/bin/find.exe"))
