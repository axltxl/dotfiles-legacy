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
  "fed" 'axltxl/init-edit

  ;; Edit specific configuration layer
  "fel" 'axltxl/config-edit

  ;; Buffer management
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "bb" 'switch-to-buffer
  "bm" (lambda () (interactive)(switch-to-buffer "*Messages*"))
  "bs" (lambda () (interactive)(switch-to-buffer "*scratch*"))
  "bd" 'evil-delete-buffer
  "bN" 'evil-buffer-new
  "br" 'revert-buffer)
