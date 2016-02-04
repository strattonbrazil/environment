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
(setq make-backup-files nil)
;disable auto save
(setq auto-save-default nil)
;no tabs
(setq-default indent-tabs-mode nil)
;autocomplete with ido
(require 'ido)
(ido-mode t)

(setq tab-width 4)
(setq coffee-tab-width 4)
(setq sgml-basic-offset 4)

(global-auto-revert-mode 1)

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

;(set-frame-font "ProggyClean")


; setup for scala
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(package-initialize)
;(unless (package-installed-p 'scala-mode2)
;  (package-refresh-contents) (package-install 'scala-mode2))

;;(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-x f") 'find-file-in-repository)

(require 'sass-mode)        

;(global-git-gutter+-mode t)
(require 'git-gutter+)
;; If you enable global minor mode
(global-git-gutter+-mode t)

(global-set-key (kbd "C-c o") 'occur)

(set-face-attribute 'default nil :height 140)

(add-to-list 'auto-mode-alist '("\\.underscore\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))

(setq ruby-indent-level 4)

(add-to-list 'load-path "~/.emacs.d/")
(load "bright-script.el")

(add-to-list 'auto-mode-alist '("\\.brs\\'" . brightscript-mode))

(server-start)
