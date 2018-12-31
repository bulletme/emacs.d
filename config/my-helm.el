;; =============================================================================
;; HELM
;; =============================================================================

(use-package helm
	:ensure helm
	:config (progn
		(helm-mode 1)

		;; --- Key Bindings ---
		(define-key helm-map (kbd "C-j") 'helm-next-line)
		(define-key helm-map (kbd "C-k") 'helm-previous-line)
		(define-key helm-map (kbd "C-c") 'helm-keyboard-quit)

		;; --- Describe Bindings ---
		(use-package helm-descbinds
			:ensure helm-descbinds
			:config (progn
				; Must set helm-map before enabling helm-descbinds-mode
				(helm-descbinds-mode t)

				;; Key bindings
				(global-set-key (kbd "<f6>") 'helm-descbinds)
				(global-set-key [remap describe-mode] #'helm-describe-modes)
			)
		)

	) ; :ensure helm
) ; (use-package helm

(provide 'my-helm)

