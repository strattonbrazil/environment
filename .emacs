(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
;no tabs
(setq-default indent-tabs-mode nil)
;autocomplete with ido
(require 'ido)
(ido-mode t)

(setq tab-width 4)

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

;(set-frame-font "ProggyClean")
(set-face-attribute 'default nil :height 120)

(server-start)
