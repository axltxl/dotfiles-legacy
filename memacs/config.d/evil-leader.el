;; evil leader key setup via general.el
;; -----------------------
;; Define leader key
(defconst axltxl/leader-key "SPC")
(use-package general
  :config
  (general-evil-setup)
  (general-create-definer axltxl/general-leader-def :prefix axltxl/leader-key))

;; Prefix definition
;; TODO: document me if it comes to that
(defun axltxl/bind-key (key ecmd &rest keydefs)
  (axltxl/general-leader-def 
    ;;:states '(normal visual emacs override) 
    :keymaps '(normal visual emacs) 
    ;;:keymaps 'override
    key ecmd)
  (if keydefs (apply 'axltxl/bind-key keydefs)))
  

