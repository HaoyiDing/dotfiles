(require-package 'lsp-mode)
(require-package 'lsp-ui)
(require-package 'lsp-origami)

;; (add-hook 'prog-mode-hook 'lsp-deferred)
(setq lsp-file-watch-ignored
  '(".idea" ".ensime_cache" ".eunit" "node_modules"
            ".git" ".hg" ".fslckout" "_FOSSIL_"
            ".bzr" "_darcs" ".tox" ".svn" ".stack-work"
            "build"))

(provide 'init-lsp)
