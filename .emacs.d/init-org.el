(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(setq-default org-export-babel-evaluate nil)

(add-hook 'org-mode-hook (lambda ()
                           (progn
                             (define-key org-mode-map "\C-cl" 'org-store-link)
                             (define-key org-mode-map "\C-cc" 'org-capture)
                             (define-key org-mode-map "\C-ca" 'org-agenda)
                             (define-key org-mode-map "\C-cb" 'org-iswitchb)
                             (org-indent-mode t))))

(provide 'init-org)
