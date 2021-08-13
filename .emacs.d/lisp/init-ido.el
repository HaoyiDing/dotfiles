(require 'ido)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point t)
(ido-mode t)
(if (< emacs-major-version 27) (icomplete-mode t) (fido-mode t))

(provide 'init-ido)
