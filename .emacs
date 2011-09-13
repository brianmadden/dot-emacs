(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(initial-buffer-choice t)
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


(add-to-list 'load-path "~/.emacs.d")

(load "~/.emacs.d/zenburn.el")
(load "~/.emacs.d/linum-22.el")

;; For C/C++
(add-to-list 'auto-mode-alist '("\\.c[i]?\\'" . textmate-mode))
(add-to-list 'auto-mode-alist '("\\.h[i]?\\'" . textmate-mode))


;; For D mode
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . textmate-mode))

;; For PHP mode
(autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
(add-to-list 'auto-mode-alist '("\\.php[i]?\\'" . php-mode))

;; For left hand line numbers
(require 'linum)
(global-linum-mode)   ;; Will force linum to turn on

;; Python mode stuff
(autoload 'python-mode "python-mode" "Major mode for editing Python code." t)
(add-to-list 'auto-mode-alist '("\\.py[i]?\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.py[i]?\\'" . textmate-mode))

(add-hook 'python-mode-hook '(lambda () 
     (define-key python-mode-map "\C-m" 'newline-and-indent)))

;;; Electric Pairs
;(add-hook 'python-mode-hook
;     (lambda ()
;      (define-key python-mode-map "\"" 'electric-pair)
;      (define-key python-mode-map "\'" 'electric-pair)
;      (define-key python-mode-map "(" 'electric-pair)
;      (define-key python-mode-map "[" 'electric-pair)
;      (define-key python-mode-map "{" 'electric-pair)))
;(defun electric-pair ()
;  "Insert character pair without sournding spaces"
;  (interactive)
;  (let (parens-require-spaces)
;    (insert-pair)))

;; For zenburn color scheme
(require 'zenburn)
(color-theme-zenburn)
(global-font-lock-mode t)
(unless (zenburn-format-spec-works-p)
  (zenburn-define-format-spec))


