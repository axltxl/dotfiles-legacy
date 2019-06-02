;; Buffer management
;; -----------------

(axltxl/bind-key
                 ;; File management
                 "ff" 'helm-find-files
                 "fs" 'save-buffer

		 ;; Reload main configuration
		 "fer" 'axltxl/config-restart

		 ;; Edit main configuration
		 "fed" 'axltxl/config-edit

		 ;; Buffer management
		 "bp" 'previous-buffer
		 "bn" 'next-buffer
		 "bb" 'helm-buffers-list
		 "bd" 'kill-buffer)
