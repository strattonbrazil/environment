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
(setq coffee-tab-width 4)

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

;(set-frame-font "ProggyClean")
(set-face-attribute 'default nil :height 120)

; setup for scala
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

;;(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'git-gutter)
;; If you enable global minor mode
(global-git-gutter-mode t)

(global-set-key (kbd "C-c o") 'occur)


;(global-set-key (kbd "C-x C-f") 'helm-find-files)

(require 'helm-ls-git)
(global-set-key (kbd "C-x C-g") 'helm-ls-git-ls)

(server-start)
