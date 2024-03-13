(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

;;
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Directories and files
(setq org-directory "~/org")

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "DELEGATED(l@/!)" "|" "DEFERRED(f@/!)" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("STARTED" :foreground "yellow" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "magenta" :weight bold)
              ("DELEGATED" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "orange" :weight bold)
              ("DEFERRED" :foreground "orange" :weight bold))))

(setq org-default-notes-file "refile.org")

;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)

;; Capture templates for: TODO tasks, Notes, and Journal entries
(setq org-capture-templates
      (quote (("t" "Todo" entry (file "~/org/todo.org")
               "* TODO %?\n%U\n" )
              ("n" "Note" entry (file "~/org/todo.org")
               "* %? :NOTE:\n%U\n" )
              ("j" "Journal" entry (file+datetree "~/org/diary.org")
               "* %?\n%U\n" )
              )))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)

; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

;;
;; Resume clocking task when emacs is restarted
(org-clock-persistence-insinuate)
;;
;; Show lot of clocking history so it's easy to pick items off the C-F11 list
(setq org-clock-history-length 23)
;; Resume clocking task on clock-in if the clock is open
(setq org-clock-in-resume t)
;; Separate drawers for clocking and logs
(setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
;; Save clock data and state changes and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)
;; Clock out when moving task to a done state
(setq org-clock-out-when-done t)
;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persist t)
;; Do not prompt to resume an active clock
(setq org-clock-persist-query-resume nil)
;; Enable auto clock resolution for finding open clocks
(setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
;; Include current clocking task in clock reports
(setq org-clock-report-include-clocking-task t)

;; Set some basic agenda view info
(setq org-agenda-ndays 7)
(setq org-deadline-warning-days 14)
(setq org-agenda-show-all-dates t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-start-on-weekday nil)

;; Set clocked time to be hh:mm only
(setq org-duration-format (quote h:mm))
