;; HELM 
;; -----
(use-package helm
  :config
  (require 'helm-config)
  (helm-mode 1)
  (axltxl/bind-key "SPC" 'helm-M-x))

