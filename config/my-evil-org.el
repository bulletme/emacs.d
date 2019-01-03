;; =============================================================================
;; EVIL ORG MODE
;; =============================================================================

;; --- Key Bindings ---
(evil-define-key 'normal org-mode-map (kbd "TAB") #'org-cycle)
(evil-define-key 'normal org-mode-map "gh" #'outline-up-heading)
(evil-define-key 'normal org-mode-map "gj" #'org-forward-heading-same-level)
(evil-define-key 'normal org-mode-map "gk" #'org-backward-heading-same-level)
(evil-define-key 'normal org-mode-map "gl" #'outline-next-visible-heading)
(evil-define-key 'normal org-mode-map "t" #'org-todo)
(evil-define-key 'normal org-mode-map "<" #'org-metaleft)
(evil-define-key 'normal org-mode-map ">" #'org-metaright)

;; TODO: Bind metaup/metadown
;(evil-define-key 'normal org-mode-map "UP" #'org-metaup)
;(evil-define-key 'normal org-mode-map "DOWN" #'org-metadown)

;; --- Leader Key Bindings ---
(evil-leader/set-key-for-mode 'org-mode
	"a" 'org-agenda
	"c" 'org-archive-subtree
	"t" 'org-show-todo-tree
)

(provide 'my-evil-org)

