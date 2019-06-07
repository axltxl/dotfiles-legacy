;; HELM
;; -----
(use-package helm
  :demand t
  :config

  ;; Load initial config
  (require 'helm-config)

  ;; open helm buffer inside current window,
  ;; not occupy whole other window
  (setq helm-split-window-inside-p t
        helm-split-window-default-side 'other)
  (helm-autoresize-mode 1)
  (helm-mode 1)

  ;; Key bindings for this layer
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;

  :bind (
    ;; helm-map (the general local keymap)
    :map helm-map
    ("C-j" . helm-next-line)
    ("C-k" . helm-previous-line)
    ("C-h" . helm-find-files-up-one-level)
    ("C-l" . helm-ff-ret)
    ("TAB" . helm-ff-RET)

    ;; helm-find-files dialog
    :map helm-find-files-map
    ("C-h" . helm-find-files-up-one-level)
    ("C-l" . helm-ff-RET)
    ("TAB" . helm-ff-RET)))

;; Prefixed key bindings for this one
(axltxl/define-key "SPC" 'helm-M-x)

;; helm-projectile
;;;;;;;;;;;;;;;;;;
(use-package helm-projectile :after (helm projectile))
(axltxl/define-key "pp" 'helm-projectile-switch-project)
(axltxl/define-key "pf" 'helm-projectile-find-file)
