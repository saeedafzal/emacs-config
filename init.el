(setq inhibit-startup-message t) ; Disable splash screen
(setq display-line-numbers-type 'relative) ; Relative line numbers
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq make-backup-files nil) ; Disable ~ files
(setq auto-save-default nil) ; Disabel #autosave#

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)

(global-display-line-numbers-mode) ; Line numbers

(load-theme 'modus-vivendi t)

;; Melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; (package-refresh-contents)

;; Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'dired-mode 'emacs) ; Use emacs state instead of evil in dired

;; Magit
(unless (package-installed-p 'magit)
  (package-install 'magit))
