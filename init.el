(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(setq inhibit-startup-message t) ; Disable splash screen
(setq display-line-numbers-type 'relative) ; Relative line numbers
(setq indent-tabs-mode nil)
(setq make-backup-files nil) ; Disable ~ files
(setq auto-save-default nil) ; Disabel #autosave#
(setq scroll-step 1
	  scroll-conservatively 10000)

(setq-default tab-width 4)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode)
(global-display-line-numbers-mode)
(load-theme 'modus-vivendi t)

(add-to-list 'default-frame-alist
			 '(font . "JetBrainsMono Nerd Font-14")
			 '(font . "JetBrainsMono NF-14"))

;; Melpa
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

;; Evil
(setq evil-want-keybinding nil)

(use-package evil
  :config
  (evil-mode))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Magit
(use-package magit)

;; Go mode
(use-package go-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode)))
