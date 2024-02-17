;; My init file

(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

;; (defvar custom-dir (load-file-name)
;;   "The root dir of the Emacs custom distribution.")

(defvar personal-dir (expand-file-name "personal" user-emacs-directory)
  "This directory is for your personal configuration.")

(defvar savefile-dir (expand-file-name "savefile" user-emacs-directory)
  "This folder stores all the automatically generated save/history-files.")
(unless (file-exists-p savefile-dir)
  (make-directory savefile-dir))



;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)


;; config changes made through the customize UI will be stored here
(setq custom-file (expand-file-name "custom.el" personal-dir))

;; Set up personal initialization files
;; TODO: make this a list to walk through
(setq personal-ui-file (expand-file-name "ui.el" personal-dir))
(setq personal-org-file (expand-file-name "org-mode.el" personal-dir))
(setq personal-ivy-file (expand-file-name "ivy.el" personal-dir))

;; Custom
(load custom-file)

;; Load personal config
(load personal-ui-file)
(load personal-ivy-file)
(load personal-org-file)
