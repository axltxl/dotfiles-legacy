;;;;;;;;;;;;;;;;
;; slack config
;;;;;;;;;;;;;;;

;; slack credentials from a private file are required in order
;; to get this baby working
(let '(slack-private-file (format "%s/slack-private.el" axltxl-spacemacs-private-dir))
  (when (file-exists-p slack-private-file)
    (progn
      (load-file slack-private-file)
      (slack-register-team
        :name axltxl-slack-team
        :default t
        :token axltxl-slack-client-token
        :subscribed-channels axltxl-slack-subscribed-channels))));
