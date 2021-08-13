(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/") ("melpa" . "https://elpa.emacs-china.org/melpa/")))

;; set default font
(set-face-attribute 'default nil
                    :family "JetBrainsMono NF"
                    :height 160
                    :weight 'normal
                    :width 'normal)
;; line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; no startup screen
(setq inhibit-startup-screen t)

;; no start up message
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;; no message in scratch buffer
(setq initial-scratch-message nil)

;; no scroll bars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; no menu bar
(menu-bar-mode -1)

;; use spaces istead of TAB for identation
(setq-default ident-tabs-mode nil)
(setq tab-width 4)
(setq c-basic-offset 4)

;; highlight parentheses
(setq show-paren-delay 0)
(show-paren-mode)

;; enable soft wrap
(global-visual-line-mode 1)

;; UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; proxy
(setq url-proxy-services '(("https" . "localhost:10809")))

(provide 'init-defaults)
