;; Window management
;; -----------------

;; Window splitting
(axltxl/bind-key "wv" 'split-window-right)
(axltxl/bind-key "ws" 'split-window-below)

;; Delete window
(axltxl/bind-key "wd" 'delete-window)

;; Navigation
(axltxl/bind-key "wk" 'evil-window-up)
(axltxl/bind-key "wj" 'evil-window-down)
(axltxl/bind-key "wh" 'evil-window-left)
(axltxl/bind-key "wl" 'evil-window-right)
