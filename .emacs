(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 ;'(initial-buffer-choice t)
 '(large-file-warning-threshold nil)
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote identity)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit shadow :foreground "light gray")))))


(column-number-mode)
(display-time-mode)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/python-mode")

(load "~/.emacs.d/zenburn.el")
(load "~/.emacs.d/linum-22.el")

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers 

;; For left hand line numbers
;;(require 'linum)
;;(global-linum-mode)   ;; Will force linum to turn on

;; For zenburn color scheme
(require 'zenburn)
(color-theme-zenburn)
(global-font-lock-mode t)
(unless (zenburn-format-spec-works-p)
  (zenburn-define-format-spec))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;; MODES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; For Scala mode
(let ((path "~/.emacs.d/scala"))
  (setq load-path (cons path load-path))
  (load "scala-mode-auto.el"))

;; For C/C++
(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))

;; For D mode
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

;; For PHP mode
(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

;; Python mode stuff
(autoload 'python-mode "python-mode" "Major mode for editing Python code." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; For haskell mode
(load "~/.emacs.d/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-to-list 'auto-mode-alist '("\\.hs[i]?\\'" . haskell-mode))



