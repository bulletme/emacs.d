;; =============================================================================
;; MAGIT
;; =============================================================================

(use-package magit
	:ensure t
	:config (progn

		; Default log settings
		(custom-set-variables
			'(magit-log-arguments (list "--graph" "--color" "--decorate" "-n256" "--follow"))
		)

		; Default visibility settings
		(add-to-list 'magit-section-initial-visibility-alist '(untracked . hide))
		(add-to-list 'magit-section-initial-visibility-alist '(staged . hide))
		(add-to-list 'magit-section-initial-visibility-alist '(file . hide))
	)
)

(provide 'my-magit)

