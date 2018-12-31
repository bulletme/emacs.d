;; =============================================================================
;; ORG MODE
;; =============================================================================
(setq org-todo-keywords '((sequence "TODO" "WIP" "HOLD" "|" "DONE")))

; Use indentation for readability
(with-eval-after-load 'org (setq org-startup-indented t))

(provide 'my-org)
