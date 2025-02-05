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

;; melpa
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

;; evil
(setq evil-want-keybinding nil)

(use-package evil
  :config
  (evil-mode))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; magit
(use-package magit)

;; org-roam
(use-package org-roam
  :custom
  (org-roam-directory "~/Documents/Notes/org-mode")
  :bind (("C-c n f" . org-roam-node-find)
		 ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-db-autosync-mode))

;; go-mode
(use-package go-mode
  :mode ("\\.go\\'" . go-mode))

;; kotlin-mode
(use-package kotlin-mode
  :mode ("\\.kt\\'" . kotlin-mode))
