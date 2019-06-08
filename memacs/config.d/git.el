;; git
;; ---

;; git-gutter
(use-package git-gutter
  :config
  (global-git-gutter-mode t))

;; magit
;;;;;;;;
(use-package magit :after general)

;; These bindings work pretty well TBH
(use-package evil-magit :after magit)

;; Key bindings for magit
(axltxl/define-key "gs" 'magit-status)
