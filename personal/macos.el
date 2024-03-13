;;; prelude-macos.el --- Emacs Prelude: macOS specific settings.
;;
;; Copyright © 2011-2018 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some macOS specific stuff.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

;; On macOS Emacs doesn't use the shell PATH if it's not started from
;; the shell. Let's fix that:
;; (prelude-require-packages '(exec-path-from-shell))

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; It's all in the Meta
(setq ns-function-modifier 'hyper)

;; There's no point in hiding the menu bar on macOS, so let's not do it
;; (menu-bar-mode +1)

;; Enable emoji, and stop the UI from freezing when trying to display them.
(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))


;; (provide 'prelude-macos)
;;; prelude-macos.el ends here
