;;;;;;;;;;;;;;;;;;
;; neotree
;;;;;;;;;;;;;;;;;;

(use-package neotree :after general

  ;; Key bindings for this one
  :general
  ( :states '(motion normal)
    :keymaps 'neotree-mode-map
    "ov"  'neotree-enter-vertical-split
    "os"  'neotree-enter-horizontal-split
    "RET" 'neotree-enter
    "c"   'neotree-create-node
    "r"   'neotree-rename-node
    "d"   'neotree-delete-node
    "h"   'neotree-select-up-node
    "gr"  'neotree-refresh
    "C"   'neotree-change-root
    "H"   'neotree-hidden-file-toggle
    "q"   'neotree-hide
    "l"   'neotree-enter)

  ;; Configuration
  :config

  ;; all-the-icons support
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; Prefixed key bindings
(axltxl/define-key "ft" 'neotree-toggle)
