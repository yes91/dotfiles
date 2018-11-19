(require 'package)
(package-initialize)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (autoload 'ghc-init "ghc" nil t)
;; (autoload 'ghc-debug "ghc" nil t)
;; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(scss-compile-at-save nil)
 '(wakatime-api-key "2e124ce2-d3e3-4a25-9ecd-c6d8f512de3f")
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(wakatime-python-bin "/usr/bin/python3")
 '(global-wakatime-mode t)
 '(custom-enabled-themes (quote (cyber)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "746518430e8cc1eac5e432e43ecc854234e836b6ee4ecea08b1c483f9bc68a2b" default)))
 '(global-auto-revert-mode t)
 '(haskell-process-args-ghci "ghci")
 '(haskell-process-args-stack-ghci (quote ("--ghci-options=-ferror-spans")))
 '(haskell-process-path-ghci "stack")
 '(haskell-process-type (quote stack-ghci))
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://stable.melpa.org/packages/")
     ("melpa-unstable" . "http://unstable.melpa.org/packages/"))))
 '(safe-local-variable-values
   (quote
    ((haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4))))
 '(scroll-bar-mode (quote left))
 '(tool-bar-mode nil))
(load-file (let ((coding-system-for-read 'utf-8))
	     (shell-command-to-string "agda-mode locate")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(put 'dired-find-alternate-file 'disabled nil)
