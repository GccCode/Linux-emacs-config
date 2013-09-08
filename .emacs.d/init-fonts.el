;;----------------------------------------------------------------------------

;; set font according OS type
;;----------------------------------------------------------------------------
;; (if *is-windows*
;;     (progn
;;       (set-face-attribute 'default nil :family "Consolas" :height 105)
;;       (set-fontset-font "fontset-default"
;;                         'han
;;                         (font-spec :family "Microsoft Yahei" :weight 'normal))))

;; (if *is-linux*
;;     (progn
;;       ()))

(provide 'init-fonts)
