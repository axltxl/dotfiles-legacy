;;;;;;;;;;;;;;;;;;;;;;;
;; Buffer management
;;;;;;;;;;;;;;;;;;;;;;;

(axltxl/define-key
  ;; File management
  "ff" 'find-file
  "fs" 'save-buffer

  ;; Buffer management
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "bb" 'switch-to-buffer
  "bm" (lambda () (interactive)(switch-to-buffer "*Messages*"))
  "bs" (lambda () (interactive)(switch-to-buffer "*scratch*"))
  "bd" 'evil-delete-buffer
  "bN" 'evil-buffer-new
  "br" 'revert-buffer)
