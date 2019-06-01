;; Buffer management
;; -----------------

;; File management
(axltxl/bind-key "fs" 'save-buffer)

;; Reload emacs configuration
(axltxl/bind-key "fer" #'(lambda () (load-file "~/.emacs.d/init.el")))

;; Buffer management
(axltxl/bind-key "bb" 'helm-buffers-list)
(axltxl/bind-key "bd" 'kill-buffer)
