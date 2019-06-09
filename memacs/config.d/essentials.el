;;;;;;;;;;;;;;;;;;
;; Essentials
;;;;;;;;;;;;;;;;;;

;; All GUI elements shall be removed!
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Start frame in fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Turn off ringing bells completely!
 (setq ring-bell-function 'ignore)
