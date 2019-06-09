;;;;;;;;;;;;;;;;;;;;;;;
;; Buffer management
;;;;;;;;;;;;;;;;;;;;;;;

(axltxl/define-key
  ;; File management
  "ff" 'find-file
  "fs" 'save-buffer

  ;; Reload main configuration
  "fer" 'axltxl/config-restart

  ;; Edit main configuration
  "fed" 'axltxl/config-edit

  ;; Edit specific configuration layer
  "fel" 'axltxl/layer-edit

  ;; Buffer management
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "bb" 'switch-to-buffer
  "bd" 'evil-delete-buffer
  "bN" 'evil-buffer-new
  "br" 'revert-buffer)
