;; evil leader key setup via general.el
;; -----------------------
(use-package general
  :config (general-create-definer axltxl/leader-key :prefix "SPC"))

;; TODO: define a sub prefix function or something
;;(general-create-definer my-local-leader-def
;; :prefix my-local-leader
;;  :prefix "SPC m")
