;;;; .emacs --- Default config for emacs
;;; Commentary:

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; PATH
(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))


;; Enable packages
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

;; Enable evil mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; C-c as escape
(defun my-esc (promt)
  "Blah"
  (cond
   ((or (evil-insert-state-p) (evil-visual-state-p) (evil-replace-state-p) (evil-normal-state-p)) [escape])
   (t (kbd "C-g"))))
(define-key key-translation-map (kbd "C-c") 'my-esc)

;; Translate C-g to C-c
(define-key key-translation-map (kbd "C-g") (lambda(prompt)(kbd "C-c")))

;; Load monokai theme
(load-theme 'monokai)

;; Powerline
(require 'powerline)
(powerline-evil-vim-color-theme)
(display-time-mode t)

;; Persistent search highlight
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

;; Leader key
(global-evil-leader-mode)
(evil-leader/set-leader "-")
(evil-leader/set-key "RET" 'evil-search-highlight-persist-remove-all)

;; Disable menu bar
(menu-bar-mode -1)

;; Flycheck
(require 'flycheck)
(global-flycheck-mode t)

;; Show matching parens
(show-paren-mode t)

;; Automatically add matching parens
(require 'autopair)
(autopair-global-mode)

;; Surround
(require 'evil-surround)
(global-evil-surround-mode 1)

;; Completion
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Haskell
(require 'haskell-mode)
(require 'flycheck-ghcmod)
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda() (ghc-init)))
(add-to-list 'company-backends 'company-ghc)
(add-hook 'haskell-mode-hook (lambda()
			       (turn-on-haskell-indentation)
			       (haskell-doc-mode)
			       (setq haskell-doc-show-global-types t)
			       ))

;; Markdown
(autoload 'markdown-mode "markdown-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Enable certain disabled commands
(put 'narrow-to-region 'disabled nil)

;; Turn off the beeping
(setq ring-bell-function 'ignore)

;; Format to 80 columns when pressing M-q (who uses 70 columns, anyway?)
(setq fill-column 80)

;; Relative line numbers
(require 'linum-relative)
(global-linum-mode)

;; Newline at end of file
(setq require-final-newline)

;; Snippets
(yas-global-mode 1)

;; Latex
(require 'tex)
(require 'company-auctex)
(add-hook 'LaTeX-mode-hook (lambda()
			     (company-auctex-init)
			     (latex-preview-pane-mode)
			     (column-marker-1 81)
			     ))

;;; .emacs ends here
