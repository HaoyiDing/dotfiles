(require-package 'lsp-java)
(require-package 'gradle-mode)
;;(setq lsp-java-server-install-dir "~/lsp-servers/java")
(setq path-to-lombok (car (file-expand-wildcards "/home/neo/.m2/repository/org/projectlombok/lombok/1.18.10/lombok-1.18.10.jar") ) )
(setq lsp-java-vmargs
      `("-noverify"
        "-Xmx1G"
        "-XX:+UseG1GC"
        "-XX:+UseStringDeduplication"
        ,(concat "-javaagent:" path-to-lombok)
        ,(concat "-Xbootclasspath/a:" path-to-lombok)))

(add-hook 'java-mode-hook #'lsp)
(add-hook 'java-mode-hook (lambda ()
                            (setq c-default-style "java")
                            (setq c-basic-offset 4)
                            (display-line-numbers-mode t)
                            (gradle-mode 1)
                            ))


(provide 'init-java)
