;; Essentials
;; ----------------------

;; All GUI elements shall be removed!
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Start frame in fullscreen mode 
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; editorconfig is must have in my life!
(use-package editorconfig :config (editorconfig-mode 1))

;; Show line numbers
(global-display-line-numbers-mode)

