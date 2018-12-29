;; =============================================================================
;; THEME
;; =============================================================================

;; --- Monokai Theme ---
(use-package monokai-theme
	:ensure monokai-theme

	:config (progn
		(unless noninteractive
			(load-theme 'monokai t)

			;; org-mode font size
			(setq
				monokai-height-minus-1 0.8
				monokai-height-plus-1 1.1
				monokai-height-plus-2 1.15
				monokai-height-plus-3 1.2
				monokai-height-plus-4 1.3
			)
		)
	)
)

;; --- Solarized Theme ---
(use-package solarized-theme
	:ensure solarized-theme

	;; REVISIT: Figure out how to use :defer
	:config (progn
		;; Load different theme for magit
		(add-hook 'magit-status-mode-hook (lambda () (load-theme 'solarized-dark t)))
	)
)

;; --- Airline Theme ---
(use-package airline-themes
	:ensure airline-themes
	:config (progn
		(unless noninteractive (load-theme 'airline-molokai t))
	)
)

(provide 'my-theme)

