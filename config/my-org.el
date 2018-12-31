;; =============================================================================
;; ORG MODE
;; =============================================================================

;; Use manoj-dark theme
(add-hook 'org-mode-hook (lambda ()
	(load-theme 'manoj-dark t)
	; FIXME: Figure out why org-bullets has ugly background in terminal mode
	(if window-system (progn
		(use-package org-bullets
			:ensure t
			:config (org-bullets-mode 1)
		)
	))
))

;; Use indentation for readability
(with-eval-after-load 'org (setq org-startup-indented t))

;; Add todo keywords
(setq org-todo-keywords '((sequence "TODO" "WIP" "HOLD" "|" "DONE")))

(provide 'my-org)
