;; -*- coding: utf-8 -*-
;; (setq server-use-tcp t)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(add-to-list 'load-path "~/.emacs.d/org-lisp/")

(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(global-set-key [?\M-\S-\r] 'org-insert-todo-heading)
;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *spell-check-support-enabled* nil)
(setq *is-mac* (eq system-type 'darwin))
(setq *is-windows* (eq system-type 'windows-nt))
(setq *is-linux* (eq system-type 'gnu/linux))

(require 'init-utils) ; convenient utils funcs missing from EMACS

(require 'init-fonts)                   ; fonts according OS
(require 'init-frame)                   ; Graphic interface settings
(require 'init-window)                  ; window move & split
(require 'init-exec-path)               ; Set up $exec-path
(require 'init-isearch)
(require 'init-scroll-lock)
(require 'init-tramp)                   ; NB!!

;; package download alone put in ~/.emacs.d/site-lisp/ dir download
;; from internet
(require 'init-site-lisp)               ; add ~/.emacs.d/site-lisp load-path
;; (require 'init-sr-speedbar)
(require 'init-ack)                     ; powerful grep-like tool written in perl
(require 'init-ag)

;; (require 'init-slime)

;; package from ELPA
(require 'init-elpa)
(require 'init-auto-complete)
(require 'init-ido)
(require 'init-org)
;; (require 'init-theme)
(require 'init-dired)

(require 'init-editing-utils)           ; global settings
(require 'init-hippie-expand)
(require 'init-cua-mode)
(require 'init-git)

;; programming language settings
(require 'init-cc-mode)
;; (require 'init-python)
(require 'init-elisp)
(require 'init-linux)
(require 'init-term-mode)               ; term-mode invoked with `ansi-term' command
(require 'init-shell-mode)              ; shell-mode invoded with `shell' command
(require 'init-shell-term)              ; switch between shell and term mode in one buffer

(require 'init-key-binding)             ; key bindings goes after all package being loaded first

(require 'server)
(unless (server-running-p)
  (server-start))
