;;;;;;;;;;;;;;;
;; Projectile
;;;;;;;;;;;;;;;

(use-package projectile
  :demand t
  :config
  (projectile-mode +1))

;; Prefixed key bindings
(axltxl/define-key
        "pp" 'projectile-switch-project
        "pf" 'projectile-find-file)
