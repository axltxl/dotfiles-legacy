;;;;;;;;;;;;;;;;;;;;;;;
;; Window management
;;;;;;;;;;;;;;;;;;;;;;;

(use-package winner
    :ensure nil
    :config
    (winner-mode))

;; Window splitting
(axltxl/define-key
  "wv" 'split-window-right ; Window splitting
  "ws" 'split-window-below
  "wd" 'delete-window ; kill window
  "w=" 'balance-windows
  "wm" 'maximize-window
  "wu" 'winner-undo
  "wr" 'winner-redo
  "wf" 'new-frame
  "wo" 'other-frame

  ;; Navigation
  "wk" 'windmove-up
  "wj" 'windmove-down
  "wh" 'windmove-left
  "wl" 'windmove-right)
