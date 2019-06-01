;; evil leader key setup via general.el
;; -----------------------
(use-package general
  :config
  (general-create-definer axltxl/leader-def :prefix "SPC"))

(defun axltxl/bind-key (key ecmd)
  (axltxl/leader-def :states 'normal :keymaps 'override key ecmd)) 

;; TODO: define a sub prefix function or something
;;(general-create-definer my-local-leader-def
;; :prefix my-local-leader
;;  :prefix "SPC m")
