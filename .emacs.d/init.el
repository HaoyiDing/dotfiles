(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(package-initialize) ;; You might already have this line
(setq initial-scratch-message "")

;; auctex
(setq TeX-view-program-selection '((output-pdf "Evince")))
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)

;; enable soft wrap
(global-visual-line-mode 1)

;; init evil
(require 'evil)
(evil-mode 1)
;; set evil redo support, useless if versioin is later than emacs28
;; M-x package-install RET undo-tree RET
(global-undo-tree-mode)
(evil-set-undo-system 'undo-tree)

;; init evil leader
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "oc" 'org-capture
  "oa" 'org-agenda
  "or" 'org-refile
  "ot" 'org-todo
  "os" 'org-schedule
  "om" 'org-archive-subtree-default
  "od" 'org-deadline)

;; init nord theme
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'nord t)

;; init org-mode
(setq org-agenda-files '("~/OneDrive/org/gtd/inbox.org"
			 "~/OneDrive/org/gtd/gtd.org"
			 "~/OneDrive/org/gtd/tickler.org"))
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/OneDrive/org/gtd/inbox.org" "Tasks")
			       "* TODO %i%?")
			      ("T" "Tickler" entry
			       (file+headline "~/OneDrive/org/gtd/tickler.org" "Tickler")
			       "* %i%? \n %U")))
(setq org-refile-targets '(("~/OneDrive/org/gtd/gtd.org" :maxlevel . 3)
			   ("~/OneDrive/org/gtd/someday.org" :level . 1)
			   ("~/OneDrive/org/gtd/tickler.org" :maxlevel . 2)))
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (lsp-haskell lsp-mode gnu-elpa-keyring-update intero undo-tree auctex evil-leader company nord-theme evil))))
