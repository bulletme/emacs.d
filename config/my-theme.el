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
				monokai-height-plus-1  1.1
				monokai-height-plus-2  1.15
				monokai-height-plus-3  1.2
				monokai-height-plus-4  1.3
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

;; --- Whitespace Mode ---
(use-package whitespace
	:ensure whitespace
	:config (progn

		(setq whitespace-style '(face trailing tabs tab-mark))
		(setq whitespace-display-mappings '(
			(space-mark 32 [183] [183])
			(tab-mark 9 [9654 9] [92 9])
		))

		(if window-system nil (progn
			(set-face-foreground 'whitespace-tab "#303030")
			(set-face-background 'whitespace-tab "#181818")
		))

		(global-whitespace-mode 1)

		(setq-default tab-width 4)
		(setq-default tab-stop-list (number-sequence 4 80 4))
	)
)

;; --- Other Settings ---
(setq-default display-line-numbers 'visual)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(background-color . black))
(add-to-list 'default-frame-alist '(foreground-color . gray))

(provide 'my-theme)

