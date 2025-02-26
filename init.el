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

(setf dired-kill-when-opening-new-dired-buffer t)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode)
(global-display-line-numbers-mode)
(load-theme 'modus-vivendi t)

(set-frame-parameter nil 'alpha-background 70)
(add-to-list 'default-frame-alist '(alpha-background . 70))

(global-whitespace-mode t)
(setq whitespace-style '(face spaces tabs trailing space-mark tab-mark))

(add-to-list 'default-frame-alist
             '(font . "JetBrainsMono Nerd Font-12")
             '(font . "JetBrainsMono NF-12"))

;; melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

;; evil
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode)
  (evil-select-search-module 'evil-search-module 'evil-search)
  (evil-set-undo-system 'undo-redo))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; magit
(use-package magit
  :config (setq magit-bury-buffer-function #'kill-buffer))

;; org-roam
(use-package org-roam
  :custom
  (org-roam-directory "~/Documents/Notes/org-mode")
  :bind (("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-db-autosync-mode))

(use-package org-modern
  :hook (org-mode . org-modern-mode)
  :config (setq org-modern-star '("●" "◉" "○" "◆")))

(use-package ox-reveal
  :after org
  :config (setq org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js"))

;; wakatime-mode
(use-package wakatime-mode
  :config (global-wakatime-mode))

;; go-mode
(use-package go-mode
  :mode ("\\.go\\'" . go-mode))

;; kotlin-mode
(use-package kotlin-mode
  :mode ("\\.kt\\'" . kotlin-mode))

;; rust-mode
(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode))
