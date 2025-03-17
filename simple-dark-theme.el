(deftheme simple-dark
  "A simple dark theme, inspired by the default theme of Neovim.")

(custom-theme-set-faces
 'simple-dark
 ;; Default face: all text (unless overridden) will be #E0E2EA on a fixed background.
 `(default ((t (:foreground "#E0E2EA" :background "#14161B"))))
 ;; Keywords: bold with #EEF1F8.
 `(font-lock-keyword-face ((t (:foreground "#EEF1F8" :weight bold))))
 ;; Strings: colored #b4f6c0.
 `(font-lock-string-face ((t (:foreground "#b4f6c0"))))
 ;; Override all other common font-lock faces to default white.
 `(font-lock-comment-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-comment-delimiter-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-constant-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-builtin-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-function-name-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-variable-name-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-type-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-preprocessor-face ((t (:foreground "#E0E2EA"))))
 `(font-lock-warning-face ((t (:foreground "#E0E2EA"))))
 ;; Whitespace-mode faces: background matches theme background; foreground is a subtle dark gray.
 `(whitespace-space ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(whitespace-tab ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(whitespace-newline ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(whitespace-trailing ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(whitespace-indentation ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(whitespace-empty ((t (:foreground "#2b2e38" :background "#14161B"))))
 `(mode-line ((t (:foreground "#E0E2EA" :background "#1a1c23" :box nil))))
 `(mode-line-inactive ((t (:foreground "#E0E2EA" :background "#14161B" :box nil))))
 )

(provide-theme 'simple-dark)
