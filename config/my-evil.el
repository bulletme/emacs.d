;; =============================================================================
;; EVIL MODE
;; =============================================================================

;; --- Leader ---
;; Must be loaded before evil-mode
(use-package evil-leader
	:commands (evil-leader-mode global-evil-leader-mode)
	:ensure evil-leader
	:demand evil-leader
	:config (progn
		(evil-leader/set-leader "<SPC>")
		(global-evil-leader-mode t)
	)
)

;; --- Evil ---
(use-package evil
	:ensure evil
	:config (progn
		(evil-mode 1)

		;; --- Settings ---
		(setq evil-auto-indent nil)
		(fset 'evil-visual-update-x-selection 'ignore)

		;; --- Key Chord ---
		(use-package key-chord
			:ensure t
			:config (progn (key-chord-mode 1))
		)

		;; --- Nerd Commenter ---
		(use-package evil-nerd-commenter
			:ensure t
			:commands (evilnc-comment-or-uncomment-lines)
		)

		;; --- Magit ---
		(use-package evil-magit
			:ensure t
		)

		;; --- My Packages ---
		(require 'my-evil-maps)
		(require 'my-evil-org)
	)
)

(provide 'my-evil)

