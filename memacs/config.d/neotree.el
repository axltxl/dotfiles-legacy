;;;;;;;;;;;;;;;;;;
;; neotree
;;;;;;;;;;;;;;;;;;

(use-package neotree
  :after evil

  ;; Configuration
  :config
  (evil-set-initial-state 'neotree-mode 'normal)
  (evil-define-key 'normal neotree-mode-map
    (kbd "RET") 'neotree-enter-
    (kbd "ov")  'neotree-enter-vertical-split
    (kbd "os")  'neotree-enter-horizontal-split
    (kbd "c")   'neotree-create-node
    (kbd "r")   'neotree-rename-node
    (kbd "d")   'neotree-delete-node
    (kbd "h")   'neotree-select-up-node
    (kbd "g")   'neotree-refresh
    (kbd "C")   'neotree-change-root
    (kbd "H")   'neotree-hidden-file-toggle
    (kbd "q")   'neotree-hide
    (kbd "l")   'neotree-enter)

  ;; all-the-icons support
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; Prefixed key bindings
(axltxl/define-key "ft" 'neotree-toggle)
