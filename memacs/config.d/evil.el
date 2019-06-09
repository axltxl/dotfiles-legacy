;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EVIL mode configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Let the EVIL begin! :)
(use-package evil
  :demand t
  :config (evil-mode 1))

;; evil leader key setup via general.el
;; -----------------------
;; Define leader key
(defconst axltxl/leader-key "SPC")
(use-package general
  :demand t
  :after (evil which-key)
  :config
    ;; FIXME comment this
    (general-evil-setup t)

    ;; FIXME: comment this
    (general-create-definer axltxl/general-leader-def :prefix axltxl/leader-key))

;; All prefixed key combinations are relabeled on which-key
;; via general
(general-define-key
  :prefix axltxl/leader-key
  :keymaps 'override
  :states '(normal visual motion emacs)
  "p"  '(nil :which-key "project")
  "f"  '(nil :which-key "file")
  "e"  '(nil :which-key "emacs")
  "b"  '(nil :which-key "buffer")
  "w"  '(nil :which-key "window")
  "g"  '(nil :which-key "git")
  "j"  '(nil :which-key "jump")
  "t"  '(nil :which-key "toggle")
  "o"  '(nil :which-key "org")
  "oa" '(nil :which-key "org-agenda")
  "oc" '(nil :which-key "org-capture"))

;; Prefix definition
;; TODO document me if it comes to that
(defun axltxl/define-key (key ecmd &rest keydefs)
  (axltxl/general-leader-def
    :keymaps 'override
    :states '(normal visual motion emacs)
    key ecmd)
  (if keydefs (apply 'axltxl/define-key keydefs)))
