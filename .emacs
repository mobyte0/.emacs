;; Packages
;; Package installation for flycheck
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Load path
(add-to-list 'load-path "/Users/rob/.emacs.d/packages")

;; Markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "gfm-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; UI Customization

;; Display column number
(setq column-number-mode t)

;; Paren mode
(show-paren-mode 1)

;; Time and date in modeline
(setq display-time-day-and-date t)
(setq display-time-12hr-format t)
(display-time)

;; Disable toolbar
(tool-bar-mode -1)

;; Hide scroll bar
(scroll-bar-mode -1)

;; Color theme
(load-theme 'monokai t)

;; Window size
(setq initial-frame-alist
     '(
       (width . 100)
       (height . 69)
       ))

;; Line number
(global-linum-mode t)

;; Flycheck Configuration
;; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Enable flyspell for text files
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; Other
;; Disable startup window
(setq inhibit-startup-screen t)

;; LaTeX Support
(setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin") exec-path))
