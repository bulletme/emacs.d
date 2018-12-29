;; =============================================================================
;; PACKAGES
;; =============================================================================
(require 'package)
(add-to-list 'package-archives '("org"          . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa"        . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("gnu"          . "http://elpa.gnu.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; --- Bootstrap `use-package` ---
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package)
)
(require 'use-package)


;; =============================================================================
;; MY CONFIGURATION
;; =============================================================================
(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'my-core)
(require 'my-ui)
(require 'my-theme)

(require 'my-evil)
(require 'my-helm)

