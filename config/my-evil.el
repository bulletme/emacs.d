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

		;; --- Key Chord ---
		(use-package key-chord
			:ensure key-chord
			:config (progn (key-chord-mode 1))
		)

		;; --- Nerd Commenter ---
		(use-package evil-nerd-commenter
			:ensure evil-nerd-commenter
			:commands (evilnc-comment-or-uncomment-lines)
		)

		;; --- Magit ---
		(use-package evil-magit
			:ensure evil-magit
		)

		;; --- Normal/Visual Mode ---
		(define-key evil-normal-state-map "H" 'evil-beginning-of-line)
		(define-key evil-visual-state-map "H" 'evil-beginning-of-line)
		(define-key evil-normal-state-map "L" 'evil-end-of-line)
		(define-key evil-visual-state-map "L" 'evil-end-of-line)
		(define-key evil-normal-state-map "#" 'evilnc-comment-or-uncomment-lines)
		(define-key evil-visual-state-map "#" 'evilnc-comment-or-uncomment-lines)

		;; --- Normal Mode ---
		(define-key evil-normal-state-map "U"         'redo)
		(define-key evil-normal-state-map (kbd "RET") 'evil-ex)
		(define-key evil-normal-state-map (kbd "C-k") 'evil-scroll-up)
		(define-key evil-normal-state-map (kbd "C-j") 'evil-scroll-down)
		; TODO: Figure out how to unbind q:
		(define-key evil-normal-state-map "q" nil)
		(evil-leader/set-key
			"q" 'evil-quit
			"w" 'evil-write
			"h" 'evil-window-left
			"j" 'evil-window-down
			"k" 'evil-window-up
			"l" 'evil-window-right
		)

		;; --- "Motion" Mode ---
		(define-key evil-motion-state-map "K" nil)

		;; --- Insert/Replace Mode ---
		(key-chord-define evil-insert-state-map  "jj" 'evil-normal-state)
		(key-chord-define evil-replace-state-map "jj" 'evil-normal-state)
		(key-chord-define evil-insert-state-map  "kk" 'evil-normal-state)
		(key-chord-define evil-replace-state-map "kk" 'evil-normal-state)

		;; --- Org-Mode ---
		(evil-define-key 'normal org-mode-map (kbd "TAB") #'org-cycle)
		(evil-define-key 'normal org-mode-map "gh" #'outline-up-heading)
		(evil-define-key 'normal org-mode-map "gj" #'org-forward-heading-same-level)
		(evil-define-key 'normal org-mode-map "gk" #'org-backward-heading-same-level)
		(evil-define-key 'normal org-mode-map "gl" #'outline-next-visible-heading)
		(evil-define-key 'normal org-mode-map "t" #'org-todo)
		(evil-define-key 'normal org-mode-map "<" #'org-metaleft)
		(evil-define-key 'normal org-mode-map ">" #'org-metaright)
		(evil-leader/set-key-for-mode 'org-mode
			"a" 'org-agenda
			"c" 'org-archive-subtree
			"t" 'org-show-todo-tree
		)

	) ; :config (progn
) ; (use-package evil

(provide 'my-evil)

