;; Packages
;; Package installation for flycheck
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)
(package-refresh-contents)

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

;; right brackets when left is typed
(electric-pair-mode 1)

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

;; Highlight current selected line
(global-hl-line-mode 1)

;; Flycheck Configuration
;; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Enable flyspell for text files
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; flyspell for markdown files
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; Other
;; Disable startup window
(setq inhibit-startup-screen t)

;; LaTeX Support
(setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin") exec-path))
;; Packages
;; Package installation for flycheck
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)
(package-refresh-contents)

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

;; Powerline
(powerline-default-theme)

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

;; Highlight current selected line
(global-hl-line-mode 1)

;; Word wrapping
(global-visual-line-mode t)

;; which-key setup
(which-key-mode)

;; Flycheck Configuration
;; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Enable flyspell for text files
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; flyspell for markdown files
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; Other
;; Disable startup window
(setq inhibit-startup-screen t)

;; LaTeX Support
(setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin") exec-path))

;; Extra stuff
;; Enable undo tree
(global-undo-tree-mode)

;; TODO: Setup Emacs Daemon config
