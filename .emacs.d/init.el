(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

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
 "e" 'find-file
 "b" 'switch-to-buffer
 "k" 'kill-buffer
 "tv" 'TeX-command-run-all
 "oc" 'org-capture
 "oa" 'org-agenda)

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

;; init auctex
(load "auctex.el" nil t t)
;; view my PDFs with Evince 
(setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
(setq TeX-view-program-selection '((output-pdf "Evince")))

;; use edge to open url in wsl
(defun browse-url-edge (url &optional new-window) (shell-command (concat "/home/neo/utils/runedge.sh " url)))
(setq browse-url-browser-function 'browse-url-edge)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (undo-tree company-auctex auctex evil-leader company nord-theme evil))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 158 :width normal)))))
