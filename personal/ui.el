;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; disable startup screen
;; (setq inhibit-startup-screen t)

;; Shot time in modeline
(setq display-time-default-load-average nil)
(setq display-time-24hr-format t)
(display-time-mode t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" current-user " - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

;; theme
(load-theme 'zenburn t)

;; show the cursor when moving after big movements in the window
(require 'beacon)
(beacon-mode +1)

;; show available keybindings after you start typing
(require 'which-key)
(which-key-mode +1)


