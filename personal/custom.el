(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(org-agenda-files
   '("/Users/walterplourde/org/projects/adsp.org" "/Users/walterplourde/org/projects/acct273.org" "/Users/walterplourde/org/projects/system.org" "~/org/projects/cloud.org"))
 '(org-capture-templates
   '(("t" "todo" entry
      (file "~/org/todo.org")
      "* TODO %?\12%U\12")
     ("n" "note" entry
      (file "~/org/todo.org")
      "* %? :NOTE:\12%U\12")
     ("j" "Journal" entry
      (file+olp+datetree "~/org/journal.org")
      "* %?\12%U\12")))
 '(package-selected-packages
   '(ledger-mode csv-mode markdown-mode geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company counsel swiper ivy zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring beacon anzu ace-window))
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cascadia Mono" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))


;; Set initial size
(setq initial-frame-alist
      '(
        (width . 150)
        (height . 40)
        ))
(setq default-frame-alist
      '(
        (width . 150)
        (height . 40)
        ))

;; Set python shell
(setq python-shell-interpreter "python3")

;; Setup org
(load "~/.emacs.d/personal/org-mode.el")

