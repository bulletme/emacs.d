;; =============================================================================
;; EVIL MODE KEY BINDINGS
;; =============================================================================

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

	"gb" 'magit-blame
	"gd" 'magit-diff-buffer-file
)

;; --- "Motion" Mode ---
(define-key evil-motion-state-map "K" nil)

;; --- Insert/Replace Mode ---
(key-chord-define evil-insert-state-map  "jj" 'evil-normal-state)
(key-chord-define evil-replace-state-map "jj" 'evil-normal-state)
(key-chord-define evil-insert-state-map  "kk" 'evil-normal-state)
(key-chord-define evil-replace-state-map "kk" 'evil-normal-state)

(provide 'my-evil-maps)

