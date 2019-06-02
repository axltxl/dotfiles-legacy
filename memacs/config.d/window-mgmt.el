;; Window management
;; -----------------

;; Window splitting
(axltxl/bind-key "wv" 'split-window-right ; Window splitting
                 "ws" 'split-window-below
                 "wd" 'delete-window ; kill window

                 ;; Navigation
                 "wk" 'windmove-up
                 "wj" 'windmove-down
                 "wh" 'windmove-left
                 "wl" 'windmove-right)
