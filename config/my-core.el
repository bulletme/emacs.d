;; =============================================================================
;; GENERAL SETTINGS
;; =============================================================================

; <F5> to reload ~/.emacs
(global-set-key (kbd "<f5>") '(lambda() (interactive) (load-file user-init-file)))

; --- Backup Directory ---
; FIXME: I don't think this works
(setq
	backup-directory-alist '(("." . "~/.emacs.d/.backup"))
	backup-by-copying t
	version-control t
	delete-older-versions t
	kept-new-versions 6
	kept-old-versions 2
	make-backup-files nil
)
(setq create-lock-files nil)

(defun kill-other-buffers()
	"Kill all other buffers."
	(interactive)
	(mapc 'kill-buffer
		(delq (current-buffer) (remove-if-not 'buffer-file-name (buffer-list)))
	)
)

; --- Clipboard ---
;; FIXME: Figure out how to make my clipboard work
(setq x-select-enable-clipboard nil)
;(setq x-select-enable-clipboard t)


(provide 'my-core)

