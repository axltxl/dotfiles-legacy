;; HELM
;; -----
(use-package helm
  :config
  (require 'helm-config)
  (setq helm-split-window-inside-p t ; open helm buffer inside current window,
	                             ; not occupy whole other window
        helm-split-window-default-side 'other)
  (helm-autoresize-mode 1)
  (helm-mode 1)

  ;; Key bindings for this layer
  :bind (:map helm-map
  ("C-j" . helm-next-line)
  ("C-k" . helm-previous-line)))

(axltxl/define-key "SPC" 'helm-M-x)
