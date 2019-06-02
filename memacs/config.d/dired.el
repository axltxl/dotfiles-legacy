;; dired
;; -----------------
;;(use-package dired
;;       :ensure nil 
;;       :defer t
;;       :config
;;       (evilified-state-evilify dired-mode dired-mode-map
;;                                "j"         'evil-next-line
;;                                "k"         'evil-previous-line
;;                                "-"         'dired-up-directory
;;                                "0"         'dired-back-to-start-of-files
;;                                (kbd "C-j") 'dired-next-subdir
;;                                (kbd "C-k") 'dired-prev-subdir
;;                                "I"         'vinegar/dotfiles-toggle
;;                                (kbd "~")   '(lambda ()(interactive) (find-alternate-file "~/"))
;;                                (kbd "RET") 'dired-find-file-other-window
;;                                "f"         'helm-find-files
;;                                "J"         'dired-goto-file
;;                                (kbd "C-f") 'find-name-dired
;;                                "H"         'diredp-dired-recent-dirs
;;                                "T"         'dired-tree-down
;;                                "K"         'dired-do-kill-lines
;;                                "r"         'revert-buffer
;;                                (kbd "C-r") 'dired-do-redisplay
;;                                "gg"        'evil-goto-first-line
;;                                "G"         'evil-goto-line))
