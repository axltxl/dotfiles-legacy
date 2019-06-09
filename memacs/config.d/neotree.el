;;;;;;;;;;;;;;;;;;
;; neotree
;;;;;;;;;;;;;;;;;;

(use-package neotree :after (general projectile)

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

;; Similar to find-file-in-project,
;; NeoTree can be opened (toggled) at projectile project root as follows:
;; https://www.emacswiki.org/emacs/NeoTree
(defun neotree/project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
      (if (neo-global--window-exists-p)
        (progn
          (neotree-dir project-dir)
          (neotree-find file-name)))
      (message "Could not find git project root."))))

;; Prefixed key bindings
(axltxl/define-key "ft" 'neotree-toggle)
(axltxl/define-key "pt" 'neotree/project-dir)
