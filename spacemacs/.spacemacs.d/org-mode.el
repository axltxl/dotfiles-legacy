;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode-specific config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Custom bullets
(setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))

;; todo lists keywords
(setq org-todo-keywords
    '((sequence "TODO" "|" "DONE" "CANCELLED")))

(with-eval-after-load 'org-agenda
    (require 'org-projectile)

    ;; Default capture template for project TODOs
    (setq org-projectile-capture-template "* TODO %?")

    ;; Add up all project TODO lists to org-agenda
    (mapcar '(lambda (file)
                 (when (file-exists-p file)
                     (push file org-agenda-files)))
        (org-projectile-todo-files)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-capture + org-journal
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun org-journal-find-location ()
    ;; Open today's journal, but specify a non-nil prefix argument in order to
    ;; inhibit inserting the heading; org-capture will insert the heading.
    (org-journal-new-entry t)
    ;; Position point on the journal's top-level heading so that org-capture
    ;; will add the new entry as a child entry.
    (goto-char (point-min)))

;; Automatically align all tags before finalizing capture
;; https://www.reddit.com/r/emacs/comments/93990v/automatically_add_tag_to_capture_in_org_mode/
(add-hook 'org-capture-before-finalize-hook #'org-align-all-tags)

;; org-capture templates
;; https://orgmode.org/manual/Capture-templates.html#Capture-templates
(setq org-capture-templates
    ;; Journal entries
    '(
      ("j" "journal/entry" entry
          (function org-journal-find-location)
          (file "~/org/templates/journal/generic.org"))

      ("a" "journal/action" entry
         (function org-journal-find-location)
         (file "~/org/templates/journal/actions/generic.org"))

      ("e" "journal/event" entry
        (function org-journal-find-location)
        (file "~/org/templates/journal/events/generic.org"))

      ("t" "task" entry
         (file "~/org/TODOs/tasks.org" )
         (file "~/org/templates/tasks/generic.org"))

      ("G" "journal/entry/github" entry
          (function org-journal-find-location)
          (file "~/org/templates/private/journal/events/github.org"))

      ("A" "task/action" entry
          (file "~/org/TODOs/tasks.org" )
          (file "~/org/templates/tasks/actions/generic.org"))

      ("g" "task/action/github" entry
          (file "~/org/TODOs/tasks.org" )
          (file "~/org/templates/private/tasks/actions/github.org"))))
