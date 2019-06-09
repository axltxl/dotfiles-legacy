;;;;;;;;;;;;;;;;;;;;;;;
;; emacs config
;;;;;;;;;;;;;;;;;;;;;;;

(axltxl/define-key
  ;; Reload main configuration
  "er" 'axltxl/config-restart

  ;; Edit main configuration
  "ed" 'axltxl/init-edit

  ;; Edit specific configuration layer
  "ec" 'axltxl/config-edit)
