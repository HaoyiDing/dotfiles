(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-evil)
(require 'init-themes)
(require 'init-company)
(require 'init-defaults)
(require 'init-ui)
(require 'init-flymake)
(require 'init-ido)
(require 'init-lsp)
(require 'init-dockerfile)
(require 'init-debugging)
(require 'init-java)
(require 'init-cpp)

;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
