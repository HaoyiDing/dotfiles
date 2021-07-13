(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
                           ("melpa" . "https://elpa.emacs-china.org/melpa/")))
(package-initialize) ;; You might already have this line
(setq initial-scratch-message "")

;; disable backup
;;(setq make-backup-files nil)

(require 'org)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

;; ligature
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'ligature)
;; Enable the "www" ligature in every possible major mode
(ligature-set-ligatures 't '("www"))
;; Enable traditional ligature support in eww-mode, if the
;; `variable-pitch' face supports it
(ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
;; Enable all Cascadia Code ligatures in programming modes
(ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                     "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                     "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                     "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                     "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                     "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                     "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                     ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                     "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                     "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                     "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                     "\\\\" "://"))
;; Enables ligature checks globally in all buffers. You can also do it
;; per mode with `ligature-mode'.
(global-ligature-mode t)

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

;; init theme
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'gruvbox t)

;; init org-mode
(setq org-agenda-files '("~/org/gtd/inbox.org"
			 "~/org/gtd/gtd.org"
			 "~/org/gtd/tickler.org"))
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/org/gtd/inbox.org" "Tasks")
			       "* TODO %i%?")
			      ("T" "Tickler" entry
			       (file+headline "~/org/gtd/tickler.org" "Tickler")
			       "* %i%? \n %U")))
(setq org-refile-targets '(("~/org/gtd/gtd.org" :maxlevel . 3)
			   ("~/org/gtd/someday.org" :level . 1)
			   ("~/org/gtd/tickler.org" :maxlevel . 2)))
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

;; indentation
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

;; set transparency
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

;; disable startup
(setq inhibit-startup-screen t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrainsMono" :foundry "JB  " :slant normal :weight normal :height 160 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-display-line-numbers-mode t)
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages '(company auctex undo-tree gruvbox-theme evil-leader))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
